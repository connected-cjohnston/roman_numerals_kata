defmodule RomanNumeralConverterTest do
  use ExUnit.Case
  doctest RomanNumeralConverter

  test "greets the world" do
    assert RomanNumeralConverter.to_integer("") == :integer
  end
end
