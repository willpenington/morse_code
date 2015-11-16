defmodule MorseCodeTest do
  use ExUnit.Case
  doctest MorseCode

  import MorseCode

  test "converting an empty string gives an empty list" do
    assert to_morse("") == []
  end

  test "converting a single letter gives the correct dots and dashes" do
    assert to_morse("a") == [:., :-]
    assert to_morse("s") == [:., :., :.]
    assert to_morse("o") == [:-, :-, :-]
    assert to_morse("t") == [:-]
    assert to_morse("1") == [:., :-, :-, :-, :-]
  end

  test "multiple letters have a short gap between them" do
    assert to_morse("sos") == [:., :., :., :short_gap, :-, :-, :-, :short_gap, :., :., :.]
    assert to_morse("hi") == [:., :., :., :., :short_gap, :., :.]
  end
  
  test "multiple words have a long gap between them" do
    assert to_morse("hi sos") == [:., :., :., :., :short_gap, :., :., 
      :long_gap, :., :., :., :short_gap, :-, :-, :-, :short_gap,
      :., :., :.]

    assert to_morse("foo bar") == [:., :., :-, :., :short_gap, :-, :-,
      :-, :short_gap, :-, :-, :-, :long_gap, :-, :., :., :.,
      :short_gap, :., :-, :short_gap, :., :-, :.]
  end
end
