defmodule Reverser do
  def reverse(string_to_reverse), do: reverse(String.to_char_list(string_to_reverse), [])

  defp reverse([head | []], reversed_list), do: to_string [head | reversed_list]
  defp reverse([head | tail], reversed_list), do: reverse(tail, [head | reversed_list])
end

IO.puts Reverser.reverse("""
Hey diddle diddle,

The cat and the fiddle,
The cow jumped over the moon.
The little dog laughed,
To see such sport,

And the dish ran away with the spoon.[1]
""")
