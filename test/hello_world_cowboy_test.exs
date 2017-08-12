defmodule HelloWorldCowboyTest do
  use ExUnit.Case
  doctest HelloWorldCowboy

  test "greets the world" do
    assert HelloWorldCowboy.hello() == :world
  end
end
