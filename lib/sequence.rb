class Sequence
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def next
    @value = get_str(@value)
    self
  end

  private

  def get_str(str)
    res = ''
    char = str[0]
    char_count = 1
    i = 1
    while i < str.length
      if char == str[i]
        char_count += 1
      else
        res += "#{char_count}#{char}"
        char = str[i]
        char_count = 1
      end

      i += 1
    end
    res += "#{char_count}#{char}"
  end
end
