# frozen_string_literal: true

require 'minitest/autorun'
require './lib/sequence'

class SequenceTest < Minitest::Test
  def setup
    @sequence = Sequence.new('1')
  end

  def test_get_next_value
    assert_equal '11', @sequence.next.value
    assert_equal '21', @sequence.next.value
  end

  def test_use_several_next_method
    assert_equal '1211', @sequence.next.next.next.value
    assert_equal '13112221', @sequence.next.next.next.value
  end
end
