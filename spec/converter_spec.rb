# frozen_string_literal: true

require './src/converter'

RSpec.describe Converter do
  subject { Converter.new }

  describe '#roman_to_int' do
    describe 'base values' do
      it 'should return 1 when given I' do
        expect(subject.roman_to_int('I')).to eq(1)
      end

      it 'should return 5 when given V' do
        expect(subject.roman_to_int('V')).to eq(5)
      end

      it 'should return 10 when given X' do
        expect(subject.roman_to_int('X')).to eq(10)
      end

      it 'should return 50 when given L' do
        expect(subject.roman_to_int('L')).to eq(50)
      end

      it 'should return 100 when given C' do
        expect(subject.roman_to_int('C')).to eq(100)
      end
    end

    describe 'compound values' do
      it 'should return 3 when given III' do
        expect(subject.roman_to_int('III')).to eq(3)
      end

      it 'should return 4 when given IV' do
        expect(subject.roman_to_int('IV')).to eq(4)
      end

      it 'should return 6 when given VI' do
        expect(subject.roman_to_int('VI')).to eq(6)
      end

      it 'should return 8 when given VIII' do
        expect(subject.roman_to_int('VIII')).to eq(8)
      end
    end
  end

  describe '#int_to_roman' do
    it 'should return I when given 1' do
      expect(subject.int_to_roman(1)).to eq('I')
    end

    it 'should return II when given 2' do
      expect(subject.int_to_roman(2)).to eq('II')
    end

    it 'should return V when given 5' do
      expect(subject.int_to_roman(5)).to eq('V')
    end
  end
end
