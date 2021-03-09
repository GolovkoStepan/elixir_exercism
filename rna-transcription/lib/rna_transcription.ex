defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    Enum.map(dna, fn(char) ->
      case char do
        65 -> 85
        84 -> 65
        67 -> 71
        71 -> 67
        _ -> char
      end
    end)
  end
end