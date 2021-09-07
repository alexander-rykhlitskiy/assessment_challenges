def longest_sequence(string)
  return if string.nil? || string.empty?

  result = ''
  current_sequence = nil
  string.length.times do |i|
    current_sequence = '' if current_sequence.nil? || string[i] != current_sequence[0]
    current_sequence << string[i]

    result = current_sequence if current_sequence.length > result.length
  end
  result
end

require 'minitest/autorun'

class TestLongestSequence < Minitest::Test
  def test_with_test_data
    assert_equal longest_sequence('Pressuuuuuure'), 'uuuuuu'
    assert_equal longest_sequence('Boat'), 'B'
    assert_equal longest_sequence('A hot  dog'), '  '
  end

  def test_with_custom_data
    assert_equal longest_sequence('B'), 'B'
    assert_equal longest_sequence('Buu'), 'uu'
    assert_nil longest_sequence('')
    assert_nil longest_sequence(nil)
  end
end
