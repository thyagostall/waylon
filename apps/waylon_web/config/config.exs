# Since configuration is shared in umbrella projects, this file
# should only configure the :waylon_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :waylon_web,
  ecto_repos: [Waylon.Repo],
  generators: [context_app: :waylon]

# Configures the endpoint
config :waylon_web, WaylonWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3AdUn103Qv1sLpYNBC5zTlHqigdAjff/hY56HlZjUtJbLUAanOYeectj2FTRekwP",
  render_errors: [view: WaylonWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WaylonWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
