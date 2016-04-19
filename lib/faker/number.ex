defmodule Faker.Number do

  def integer(from..to) do
    round(from + :random.uniform * (to - from))
  end

end
