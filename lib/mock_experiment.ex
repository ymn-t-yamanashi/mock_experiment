defmodule MockExperiment do
  @moduledoc """
  Documentation for `MockExperiment`.
  """

  def hello_msg() do
    Random.get()
    |> hello()
  end

  def hello_msg_map() do
    Enum.map(1..3, fn _ -> Random.get() |> hello() end)
  end

  defp hello(3), do: "あたり"
  defp hello(_), do: "はずれ"
end
