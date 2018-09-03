require 'minitest/autorun'
require_relative './recursive_list'

class ListTest < Minitest::Test
  def test_sum_returns_zero_for_empty_list
    assert_equal 0, List.sum([])
  end
  
  def test_sum_returns_number_for_single_element_list
    assert_equal 7, List.sum([7])
  end
  
  def test_sum_returns_sum_for_three_element_list
    assert_equal 6, List.sum([1, 2, 3])
  end
  
  def test_sum_returns_sum_for_ten_element_list
    assert_equal 589, List.sum([5, 5, 10, 11, 4, 23, 100, 8, 90, 333])
  end
  
  def test_count_returns_zero_for_empty_list
    assert_equal 0, List.count([])
  end

  def test_count_returns_zero_for_empty_list
    assert_equal 3, List.count([1, 2, 3])
  end
  
  def test_max_returns_zero_for_empty_list
    assert_equal 0, List.max([])
  end
  
  def test_max_returns_element_for_single_element_list
    assert_equal 4, List.max([4])
  end
  
  def test_max_returns_highest_number_for_three_element_list
    assert_equal 8, List.max([4,8,3])
  end
  
  def test_max_returns_highest_number_for_ten_element_list
    assert_equal 333, List.max([5, 5, 10, 11, 4, 23, 100, 8, 90, 333])
  end
  
  def test_quick_sort_returns_empty_list_for_empty_list
    assert_equal [], List.quick_sort([])
  end
  
  def test_quick_sort_returns_list_for_single_element_list
    assert_equal [4], List.quick_sort([4])
  end
  
  def test_quick_sort_returns_sorted_list_for_two_element_list
    assert_equal [2, 4], List.quick_sort([4, 2])
  end
  
  def test_quick_sort_returns_sorted_list_for_three_element_list
    assert_equal [2, 4, 8], List.quick_sort([4, 8, 2])
  end
  
  def test_quick_sort_returns_sorted_list_for_10_element_list
    assert_equal [2, 4, 5, 8, 9, 12, 13, 15, 16, 20], List.quick_sort([4, 20, 2, 13, 9, 15, 5, 8, 12, 16])
  end
end
