defmodule FilterList do
  def call(list), do: filter_string_list(list)

  defp filter_string_list(list) do
    numbers =
      Enum.flat_map(list, fn string ->
        case Integer.parse(string) do
          {int, _rest} -> [int]
          :error -> []
        end
      end)

    odd? = &(rem(&1, 2) != 0)
    odd_numbers = Enum.filter(numbers, odd?)
    Enum.count(odd_numbers)
  end
end
