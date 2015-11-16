# MorseCode

Convert strings into Morse code with the power of pattern matching!

## Usage

MorseCode.to_morse("sos") will return [:., :., :., :short_gap, :-, :-, :-,  :short_gap, :., :., :.]

No other functions are implemented at the moment.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add morse_code to your list of dependencies in `mix.exs`:

        def deps do
          [{:morse_code, git: "https://github.com/willpenington/morse_code"}]
        end

  2. Ensure morse_code is started before your application:

        def application do
          [applications: [:morse_code]]
        end
