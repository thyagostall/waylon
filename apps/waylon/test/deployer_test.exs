defmodule Waylon.DeployerTest do
  use ExUnit.Case

  alias Waylon.Deployer

  @tag timeout: 601_000
  @tag :skip
  test "Smoke test" do
    Deployer.deploy('prudget', &IO.puts/1)
  end
end
