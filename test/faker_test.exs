defmodule FakerTest do
  use ExUnit.Case
  doctest Faker

  test "random number" do
    for _ <- 0..100 do
      n = Faker.Number.integer(5..6)
      assert n >= 5 && n <= 6
    end
  end

  test "read_file" do
    assert is_map(Faker.read_file)
  end

end
