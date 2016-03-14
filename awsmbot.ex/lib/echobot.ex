defmodule Bot.Echobot do
  # use ExActor.Empty
  use Slack
  use Common
  @name __MODULE__


  def handle_connect(slack, state) do
    IO.puts "Connected as #{slack.me.name} with mod #{@name}"
    {:ok, state}
  end

  def handle_message(message = %{type: "message"}, slack, state) do
    info "state: #{inspect state}\nmessage: #{message}"
    send_message(message.text, message.channel, slack)
    {:ok, state}
  end

  def handle_message(_message, _slack, state) do
    {:ok, state}
  end
end