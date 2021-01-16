# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hypevest,
  ecto_repos: [Hypevest.Repo]

# Configures the endpoint
config :hypevest, HypevestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+xsAEsinIWR8eJ8NiRB6TAyi0x4tw3g+9zkdqSVm1Nn/NPj7YahWFeyxnVSaq+lz",
  render_errors: [view: HypevestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Hypevest.PubSub,
  live_view: [signing_salt: "2nJ285mY"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
