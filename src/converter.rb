# frozen_string_literal: true

# Converts number from Roman to Arabic and back
class Converter
  ROMAN_NUMERALS = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }.freeze

  def roman_to_int(num)
    total = 0

    chars = num.split('')
    chars.each_with_index do |x, i|
      total += calculate(x, chars[i + 1])
    end

    total
  end

  def int_to_roman(num)
    values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    roman_literals = %w[M CM D CD C XC L XL X IX V IV I]

    result = ''
    values.each_with_index do |val, i|
      while num >= val
        num -= val
        result = "#{result}#{roman_literals[i]}"
      end
    end

    result
  end

  private

  def subtractive?(next_val, current_val)
    ROMAN_NUMERALS[next_val] && ROMAN_NUMERALS[current_val] < ROMAN_NUMERALS[next_val]
  end

  def calculate(val, next_val)
    subtractive?(next_val, val) ? ROMAN_NUMERALS[val] * -1 : ROMAN_NUMERALS[val]
  end
end
