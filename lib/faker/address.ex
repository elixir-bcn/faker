defmodule Faker.Address do
  import Faker
  def data_from_file(name) do
    case name do
      :city_prefix -> read_file["es"]["faker"]["address"][to_string(name)]
    end
  end

  sampler :city_prefix

  # def city do
  #   Enum.random(["Madrid", "Barcelona"])
  # end
end
