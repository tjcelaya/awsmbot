defmodule Awsmbot do
  use Application
  # import Logger, only: [info: 1, error: 1]

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    token = Application.get_env :awsmbot, :token
    # info "Awsmbot supervisor starting with token #{token}"

    import Supervisor.Spec, warn: true #defaults to false

    children = [
      # Define workers and child supervisors to be supervised
      # worker(Awsmbot.Worker, [arg1, arg2, arg3]),
      worker(Bot.Echobot, [token, nil])
      # worker(EchoBot, [])
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Awsmbot.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
