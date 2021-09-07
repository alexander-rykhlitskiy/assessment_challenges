# I haven't come to smth more clever than brute force. Maybe it's too late and I will try again tomorrow
def maximum_sum_positions(numbers)
  return if numbers.nil? || numbers.empty?

  result_start, result_end = nil

  numbers.length.times do |start_position|
    start_position.upto(numbers.length - 1) do |end_position|
      current_subset = numbers[start_position..end_position]
      max_subset = numbers[result_start..result_end]

      if current_subset.sum > max_subset.sum
        result_start, result_end = start_position, end_position
      end
    end
  end

  [result_start, result_end]
end

require 'minitest/autorun'

class TestMaximumSumSubset < Minitest::Test
  def test_with_test_data
    assert_equal maximum_sum_positions([2, -4, 6, 8, -10, 100, -6, 5]), [2, 5]
  end

  def test_with_custom_data
    assert_nil maximum_sum_positions([])
    assert_nil maximum_sum_positions(nil)
  end
end
