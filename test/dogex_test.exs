defmodule DogexTest do
  use ExUnit.Case
  doctest Dogex

  test "rpc url" do
    assert "http://test:testpassword@localhost:18332" == Dogex.rpc_url
  end

  test "get info" do
    {:ok, _} = Dogex.get_info
  end

  test "get new address" do
    {:ok, _} = Dogex.get_new_address
  end

  test "get block count" do
    {:ok, _} = Dogex.get_block_count
  end

  test "list accounts" do
    {:ok, _} = Dogex.list_accounts
  end

  #TODO: Add tests for methods with arguments
  
end
