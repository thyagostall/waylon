# Since configuration is shared in umbrella projects, this file
# should only configure the :waylon application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :waylon,
  ecto_repos: [Waylon.Repo]

import_config "#{Mix.env()}.exs"
