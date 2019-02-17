defmodule WaylonWeb.PageController do
  use WaylonWeb, :controller

  def deploy(conn, _params) do
    conn =
      conn
      |> put_resp_content_type("text/event-stream")
      |> send_chunked(200)

    Waylon.Deployer.deploy("prudget", fn (row) ->
      conn |> chunk(row)
    end)
  end
end
