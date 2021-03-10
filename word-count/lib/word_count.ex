defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
      |> String.split()
      |> Enum.reduce(%{}, fn(word, map) ->
        Map.update(map, word, 1, fn(value) -> value + 1 end)
      end)
  end
end
