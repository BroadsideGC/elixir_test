# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_test,
  ecto_repos: [ElixirTest.Repo]

# Configures the endpoint
config :elixir_test, ElixirTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "X2pfAXqRtrTpVBm5u/P6HgOPUghL/uUpii3rznXMYOEOop5Tz1u4efrZfHaoasCd",
  render_errors: [view: ElixirTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ElixirTest.PubSub,
  live_view: [signing_salt: "oDsQUlho"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
