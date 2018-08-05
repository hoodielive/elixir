defmodule SecAppTest do
  use ExUnit.Case
  doctest SecApp

  test "greets the world" do
    assert SecApp.hello() == :world
  end
end
