require 'rails_helper'
require_relative '../../app/lib/string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns the number itself for a single number' do
      expect(StringCalculator.add("1")).to eq(1)
      expect(StringCalculator.add("5")).to eq(5)
    end

    it 'returns the sum of two numbers' do
      expect(StringCalculator.add("1,5")).to eq(6)
      expect(StringCalculator.add("2,3")).to eq(5)
    end

     it 'returns the sum of multiple numbers' do
      expect(StringCalculator.add("1,2,3")).to eq(6)
      expect(StringCalculator.add("4,5,6,7")).to eq(22)
    end

    it 'returns the sum when numbers are separated by new lines' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
      expect(StringCalculator.add("4\n5\n6,7")).to eq(22)
    end
    
    it 'supports different delimiters' do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
      expect(StringCalculator.add("//|\n1|2|3")).to eq(6)
    end
  end
end