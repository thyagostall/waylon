defmodule Waylon.Deployer do

  def deploy(app_name, callback) do
    {:ok, conn} = SSHEx.connect ip: hostname(), port: port(), user: user()

    str = SSHEx.stream conn, "cd /bathala/#{app_name} && ./update-#{app_name}.sh", exec_timeout: 600_000

    Enum.each(str, fn({_status, output_row})-> callback.(output_row) end)
  end

  defp hostname(), do: Application.get_env(:waylon, :hostname)
  defp port(), do: Application.get_env(:waylon, :port)
  defp user(), do: Application.get_env(:waylon, :user)

end
