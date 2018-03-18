# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :chat_amdx,
  ecto_repos: [ChatAmdx.Repo]

# Configures the endpoint
config :chat_amdx, ChatAmdx.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hu+DTTxC6hY3qPw8+efkw9Cj79MMfD80TGC5Y548YVn2NC+SOSyWyJo+AP0xnWj2",
  render_errors: [view: ChatAmdx.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ChatAmdx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
