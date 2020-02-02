# frozen_string_literal: true

require 'minitest/autorun'
require './lib/sequence'

class SequenceTest < Minitest::Test
  def setup
    @sequence = Sequence.new('1')
  end

  def test_first
    assert_equal '11', @sequence.next.value
    assert_equal '21', @sequence.next.value
    assert_equal '1211', @sequence.next.value
    assert_equal '13112221', @sequence.next.next.next.value
  end
end
