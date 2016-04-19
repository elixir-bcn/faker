defmodule Faker do

  def read_file do
    YamlElixir.read_from_file "lib/faker/locales/es.yml"
  end

  defmacro sampler(name) do
    data = read_file["es"]["faker"]["address"][to_string(name)]
    count = Enum.count(data)

    quote do
      def unquote(name)() do
        unquote(data)
        |> Enum.at(:crypto.rand_uniform(0, unquote(count)))
      end
    end
 end
end
