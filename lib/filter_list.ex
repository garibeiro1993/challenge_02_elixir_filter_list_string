defmodule FilterList do
  def call(list), do: filter_string_list(list)

  defp filter_string_list(list) do
    Enum.flat_map(list, fn string ->
      case Integer.parse(string) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
  end
end
