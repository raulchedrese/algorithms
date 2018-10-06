require 'minitest/autorun'
require_relative 'binary_search'

class BinarySearchTest < Minitest::Test
  def test_searching_empty_list
    list = []

    assert_nil binary_search(1, list)
  end

  def test_searching_single_element_list
    list = [1]

    assert_equal 0, binary_search(1, list)
  end

  def test_searching_multiple_elements_list
    list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    assert_equal 2, binary_search(3, list)
  end

  def test_searching_for_last_element_list
    list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    assert_equal 9, binary_search(10, list)
  end
end
