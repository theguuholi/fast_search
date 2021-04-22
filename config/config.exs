# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :fast_search,
  ecto_repos: [FastSearch.Repo]

# Configures the endpoint
config :fast_search, FastSearchWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Jn7BsTw4OGf6vrvR9RjaFeVCwbgnt09+c7H/LsMHqjD9Fl2MvOR7c6bQzpoxXtry",
  render_errors: [view: FastSearchWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: FastSearch.PubSub,
  live_view: [signing_salt: "C5jM9wMc"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
