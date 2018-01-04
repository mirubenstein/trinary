class Trinary
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_decimal
    if number.match?(/[^012]/)
      0
    else
      trits.each.with_index.sum { |trit, power| trit * 3**power }
    end
  end

  private

  def trits
    number.reverse.chars.map(&:to_i)
  end
end

module BookKeeping
  VERSION = 1
end
