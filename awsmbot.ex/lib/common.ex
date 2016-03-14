defmodule Common do
  defmacro __using__(_opts) do
    IO.puts "common imported"
    quote do
      import Logger, only: [info: 1, error: 1]
      # and more...
    end
  end
end