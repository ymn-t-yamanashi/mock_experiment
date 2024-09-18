defmodule MockExperimentTest do
  use ExUnit.Case
  doctest MockExperiment

  test "greets the world" do
    assert MockExperiment.hello() == :world
  end
end
