# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :stories_graphql_api,
  ecto_repos: [StoriesGraphqlApi.Repo]

# Configures the endpoint
config :stories_graphql_api, StoriesGraphqlApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DsqaUkY2sbv1o3r+aNdCc3vHQ2tY1+3EER83W5CB4Go0gtGNEy+aQRHkyQ9TywKY",
  render_errors: [view: StoriesGraphqlApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: StoriesGraphqlApi.PubSub,
  live_view: [signing_salt: "REpYazDe"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
