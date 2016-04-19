defmodule AddressTest do
  use ExUnit.Case

  test "#city_prefix" do
    first = Faker.Address.city_prefix
    assert is_binary(first)
    assert String.length(first) > 0
    second = Faker.Address.city_prefix
    assert is_binary(second)
    assert String.length(second) > 0
    assert first != second
  end

  test "random generation" do
    ary = for _ <- 0..10 do
      Faker.Address.city_prefix
    end
    assert (Enum.uniq(ary) |> Enum.count) > 1
  end
end
