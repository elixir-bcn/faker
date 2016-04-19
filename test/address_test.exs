defmodule AddressTest do
  use ExUnit.Case

  test "#city" do
    first = Faker.Address.city
    assert is_binary(first)
    assert String.length(first) > 0
    second = Faker.Address.city
    assert is_binary(second)
    assert String.length(second) > 0
    assert first != second
  end

  test "random generation" do
    ary = []
    for _ <- 0..10 do
      ary = [ Faker.Address.city | ary ]
    end
    assert Enum.count(Enum.uniq(ary)) > 1
  end
end
