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
    "M" => 100,
  }

  @doc """
  Convert a roman numeral to an integer
  """
  def to_integer(input) do
    @roman_numerals[input]
  end

  @doc """
  Convert an integer to a roman numeral
  """
  def to_roman(input) do
    :roman
  end
end
