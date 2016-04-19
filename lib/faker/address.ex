defmodule Faker.Address do
  def city do
    Enum.random(["Madrid", "Barcelona"])
  end
end
