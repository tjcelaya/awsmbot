defmodule Awsmbot.Mixfile do
  use Mix.Project

  def project do
    [app: :awsmbot,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # "mix help compile.app" for more information
  def application do
    [
      applications: apps(Mix.env),
      mod: {Awsmbot, []},
    ]
  end

  defp apps(:dev), do: apps(:all) ++ [:remix]
  defp apps(_all), do: [:logger, :slack]
  # compiler will complain if the more general _all is first

  defp deps do
    [
      # {:marvin, "~> 0.3.0"},
      {:websocket_client, git: "https://github.com/jeremyong/websocket_client"},
      # {:websocket_client, "~> 1.1"},
      {:slack, "~> 0.4.2"},
      {:exactor, "~> 2.2.0"},
      {:remix, "~> 0.0.1", only: :dev}
    ]
  end
end
