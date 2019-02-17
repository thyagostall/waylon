defmodule Waylon.Repo do
  use Ecto.Repo,
    otp_app: :waylon,
    adapter: Ecto.Adapters.MySQL
end
