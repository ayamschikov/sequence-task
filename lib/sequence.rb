# frozen_string_literal: true

class Sequence
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def next
    @value = calculate_next_value(@value)
    self
  end

  private

  def calculate_next_value(value)
    result = ''
    prev_char = value[0]
    char_count = 1

    1.upto(value.length) do |i|
      if prev_char == value[i]
        char_count += 1
      else
        result += "#{char_count}#{prev_char}"
        prev_char = value[i]
        char_count = 1
      end
    end

    result
  end
end
