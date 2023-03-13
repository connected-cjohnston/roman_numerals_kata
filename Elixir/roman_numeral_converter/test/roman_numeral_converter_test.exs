defmodule RomanNumeralConverterTest do
  use ExUnit.Case

  test "should return 1 when given I" do
    assert RomanNumeralConverter.to_integer("I") == 1
  end

  test "should return 2 when given II" do
    assert RomanNumeralConverter.to_integer("II") == 2
  end

  test "should return 6 when given VI" do
    assert RomanNumeralConverter.to_integer("VI") == 6
  end

  test "should return 4 when given IV" do
    assert RomanNumeralConverter.to_integer("IV") == 4
  end

  test "should return 3999 when given MMMCMXCIX" do
    assert RomanNumeralConverter.to_integer("MMMCMXCIX") == 3999
  end
end
