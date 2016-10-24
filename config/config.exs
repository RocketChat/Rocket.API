# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rocket,
  ecto_repos: [Rocket.Repo]

# Configures the endpoint
config :rocket, Rocket.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pZuQvQeYOXee3cxhrncNer1/d/kra7ecnBXi7C4rXuIOMGWFumuxA8HkDS/Kal2L",
  render_errors: [view: Rocket.ErrorView, accepts: ~w(json)],
  pubsub: [name: Rocket.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Allow for JSON Formatted Responses
config :phoenix, :format_encoders,
  "json-api": Poison

config :plug, :types, %{
  "application/vnd.api+json" => ["json-api"]
}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
