defmodule Random do
  def get(), do: Enum.random(1..3)
end
