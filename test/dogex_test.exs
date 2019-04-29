defmodule DogexTest do
  use ExUnit.Case
  doctest Dogex

  test "get info" do
    {:ok, _} = Dogex.get_info
  end

  
end
