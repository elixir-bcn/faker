defmodule Faker.Address do
  import Faker
  def data_from_file(name) do
    case name do
      :city -> read_file["es"]["faker"]["address"]
    end
  end

  sampler :city_prefix

  # def city do
  #   Enum.random(["Madrid", "Barcelona"])
  # end
end
