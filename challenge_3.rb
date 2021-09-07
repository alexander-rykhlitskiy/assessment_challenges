def last_word_length(string)
  string.match(/(\w+)\s*\z/)[1].length
end

require 'minitest/autorun'

class TestMaximumSumSubset < Minitest::Test
  def test_with_test_data
    assert_equal 5, last_word_length('Hello World')
    assert_equal 4, last_word_length(' fly me   to   the moon  ')
    assert_equal 6, last_word_length('luffy is still joyboy')
  end

  def test_with_custom_data
    assert_equal 1, last_word_length('s')
    assert_equal 1, last_word_length('  s  ')
    assert_equal 6, last_word_length('joyboy')
  end
end
