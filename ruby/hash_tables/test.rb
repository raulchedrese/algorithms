require 'minitest/autorun'
require_relative './hash_table'

class HashTableTest < Minitest::Test
  def test_hash_table_init
    hash = HashTable.new
    refute_nil hash
  end
  
  def test_get_element
    hash = HashTable.new
    hash.set('apples', 10)
    hash.set('oranges', 8)
    hash.load_factor
    assert_equal 10, hash.get('apples')
  end
end
