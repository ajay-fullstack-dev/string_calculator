class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ',|\n'
    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
    end

    numbers.split(/#{delimiter}/).map(&:to_i).sum
  end
end
