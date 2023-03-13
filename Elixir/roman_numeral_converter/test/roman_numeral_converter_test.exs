defmodule RomanNumeralConverterTest do
  use ExUnit.Case

  test "should return 1 when given I" do
    assert RomanNumeralConverter.to_integer("I") == 1
  end

  test "should return 5 when given V" do
    assert RomanNumeralConverter.to_integer("V") == 5
  end

  test "should return 10 when given X" do
    assert RomanNumeralConverter.to_integer("X") == 10
  end

  # test "should return 2 when given II" do
  #   assert RomanNumeralConverter.to_integer("II") == 2
  # end
end
