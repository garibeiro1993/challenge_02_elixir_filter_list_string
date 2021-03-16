defmodule FilterListTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the list int" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      response = FilterList.call(list)

      expected_response = 3

      assert response == expected_response
    end
  end
end
