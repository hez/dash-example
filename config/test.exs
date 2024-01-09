import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :dash_example, DashExampleWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "ye4n6Z3z+oymu2/zPUswi5CWgDNkOe3Z6H2LSa7ltZFQrPf6VZSb5hNk95kTsdpl",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
