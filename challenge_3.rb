def last_word_length(string)
  string.match(/(\w+)\s*\z/)[1].length
end

require 'minitest/autorun'

class TestMaximumSumSubset < Minitest::Test
  def test_with_test_data
    assert_equal last_word_length('Hello World'), 5
    assert_equal last_word_length(' fly me   to   the moon  '), 4
    assert_equal last_word_length('luffy is still joyboy'), 6
  end

  def test_with_custom_data
    assert_equal last_word_length('s'), 1
    assert_equal last_word_length('  s  '), 1
    assert_equal last_word_length('joyboy'), 6
  end
end
