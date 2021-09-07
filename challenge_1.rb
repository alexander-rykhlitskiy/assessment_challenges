def longest_sequence(string)
  return if string.nil? || string.empty?

  result = ''
  current_sequence = ''
  string.length.times do |i|
    if string[i] == current_sequence[0]
      current_sequence << string[i]
    else
      current_sequence = string[i]
    end

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

    assert_nil longest_sequence('')
    assert_nil longest_sequence(nil)
  end
end
