defmodule Faker do

  def read_file do
    YamlElixir.read_from_file "lib/faker/locales/es.yml"
  end

  defmacro sampler(name) do
    quote do
      def unquote(name)() do
        data = __MODULE__.data_from_file(unquote(name))
        count = Enum.count(data)
        data
        |> Enum.at(:crypto.rand_uniform(0, count))
      end
    end
 end
end
