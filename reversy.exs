#### Fun pattern matching version
defmodule Reverser do
  def reverse(string_to_reverse), do: reverse(String.to_char_list(string_to_reverse), [])

  defp reverse([head | []], reversed_list), do: to_string [head | reversed_list]
  defp reverse([head | tail], reversed_list), do: reverse(tail, [head | reversed_list])
end

subject = """
Hey diddle diddle,

The cat and the fiddle,
The cow jumped over the moon.
The little dog laughed,
To see such sport,

And the dish ran away with the spoon.[1]
"""

IO.puts Reverser.reverse(subject)

#### Shorter version
subject 
  |> String.to_char_list(subject)
  |> Enum.reduce(list, [], fn(char, acc) -> [char | acc] end)
  |> to_string
  |> IO.puts
