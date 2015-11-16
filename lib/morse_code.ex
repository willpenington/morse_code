defmodule MorseCode do

  def to_morse(x) do
    to_morse(x, {[], []})
  end

  defp to_morse("", {acc, _short_gap}) do
    acc
  end

  defp to_morse(<<" ", tail::binary>>, {acc, _short_gap}) do
    to_morse(tail, {acc ++ [:long_gap], []})
  end

  defp to_morse(<<char::binary-size(1), tail::binary>>, {acc, short_gap}) do
    to_morse(tail, {acc ++ short_gap ++ char_to_morse(char), [:short_gap]})
  end

  defp char_to_morse("a"), do: [:., :-]
  defp char_to_morse("b"), do: [:-, :., :., :.]
  defp char_to_morse("c"), do: [:-, :., :-, :.]
  defp char_to_morse("d"), do: [:-, :-, :., :.]
  defp char_to_morse("e"), do: [:.]
  defp char_to_morse("f"), do: [:., :., :-, :.]
  defp char_to_morse("g"), do: [:-, :-, :.]
  defp char_to_morse("h"), do: [:., :., :., :.]
  defp char_to_morse("i"), do: [:., :.]
  defp char_to_morse("j"), do: [:., :-, :-, :-]
  defp char_to_morse("k"), do: [:-, :., :-]
  defp char_to_morse("l"), do: [:., :-, :., :.]
  defp char_to_morse("m"), do: [:-, :-]
  defp char_to_morse("n"), do: [:-, :.]
  defp char_to_morse("o"), do: [:-, :-, :-]
  defp char_to_morse("p"), do: [:., :-, :-, :.]
  defp char_to_morse("q"), do: [:-, :-, :., :-]
  defp char_to_morse("r"), do: [:., :-, :.]
  defp char_to_morse("s"), do: [:., :., :.]
  defp char_to_morse("t"), do: [:-]
  defp char_to_morse("u"), do: [:., :., :-]
  defp char_to_morse("v"), do: [:., :., :., :-]
  defp char_to_morse("w"), do: [:., :-, :-]
  defp char_to_morse("x"), do: [:-, :., :., :-]
  defp char_to_morse("y"), do: [:-, :., :-, :-]
  defp char_to_morse("z"), do: [:-, :-, :., :.]

  defp char_to_morse("1"), do: [:., :-, :-, :-, :-]
  defp char_to_morse("2"), do: [:., :., :-, :-, :-]
  defp char_to_morse("3"), do: [:., :., :., :-, :-]
  defp char_to_morse("4"), do: [:., :., :., :., :-]
  defp char_to_morse("5"), do: [:., :., :., :., :.]
  defp char_to_morse("6"), do: [:-, :., :., :., :.]
  defp char_to_morse("7"), do: [:-, :-, :., :., :.]
  defp char_to_morse("8"), do: [:-, :-, :-, :., :.]
  defp char_to_morse("9"), do: [:-, :-, :-, :-, :.]
  defp char_to_morse("0"), do: [:-, :-, :-, :-, :-]

end
