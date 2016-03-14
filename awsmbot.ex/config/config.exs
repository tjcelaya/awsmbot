use Mix.Config

config :logger, :console,
  format: "\n$time $metadata[$level] $levelpad$message\n"
  # metadata: [:user_id]

config :awsmbot, token: System.get_env("SLACK_TOKEN")

if File.exists? "#{Mix.env}.exs" do
  import_config "#{Mix.env}.exs"
end








# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure for your application as:
#     config :awsmbot, key: :value
#
# And access this configuration in your application as:
#     Application.get_env(:awsmbot, :key)
#
# Or configure a 3rd-party app:
#     config :logger, level: :info

# It is also possible to import configuration files, relative to this directory
# Order matters.

# config :marvin,
#   slack_token: System.get_env("SLACK_TOKEN"),
#   bots: [EchoBot]

# IO.puts "env has #{Application.get_env(:marvin, :slack_token)}"
