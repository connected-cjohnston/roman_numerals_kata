defmodule RomanNumeralConverter do
  @moduledoc """
  Provides functions for converting to and from Roman numerals
  """

  @roman_numerals %{
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000,
  }

  @type roman_numeral() :: String.t()

  @doc """
  Convert a roman numeral to an integer
  """
  @spec to_integer(roman_numeral) :: integer
  def to_integer(input) do
    String.graphemes(input) |> add()
  end

  defp add([]), do: 0
  defp add([x]), do: @roman_numerals[x]
  defp add([x | tail]) do
    y = List.first(tail)

    if y != nil and @roman_numerals[x] < @roman_numerals[y] do
      -@roman_numerals[x] + add(tail)
    else
      @roman_numerals[x] + add(tail)
    end
  end
end
