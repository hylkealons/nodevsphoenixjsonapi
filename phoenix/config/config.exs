# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :portal,
  ecto_repos: [Test.Repo]

# Configures the endpoint
config :portal, Test.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jM7xtnCy5iCtGyKHaPfGoqQfTSsLyk9dl2pgyIqpT+3R9SXaW9CUHJvyDBY3t2tj",
  render_errors: [view: Test.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Test.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
