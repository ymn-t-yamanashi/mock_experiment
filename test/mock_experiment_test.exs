defmodule MockExperimentTest do
  use ExUnit.Case
  import Mock

  test "hello_msg はずれ" do
    with_mock Random,
      get: fn -> 2 end do
      assert MockExperiment.hello_msg() == "はずれ"
    end
  end

  test "hello_msg あたり" do
    with_mock Random,
      get: fn -> 3 end do
      assert MockExperiment.hello_msg() == "あたり"
    end
  end

  test "hello_msg_map はずれ" do
    with_mock Random,
      get: fn -> 1 end do
      assert ["はずれ", "はずれ", "はずれ"] == MockExperiment.hello_msg_map()
    end
  end

  test "hello_msg_map あたり" do
    with_mock Random,
      get: fn -> 3 end do
      assert ["あたり", "あたり", "あたり"] == MockExperiment.hello_msg_map()
    end
  end
end
