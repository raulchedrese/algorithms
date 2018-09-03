class HashTable
  def initialize
    @array = Array.new()
  end
  
  def get(key)
    @array[hash_func(key)]
  end
  
  def set(key, value)
    @array[hash_func(key)] = value
  end
  
  def load_factor()
    @array.compact.length.to_f / @array.length.to_f
  end
  
  private
  
  def hash_func(key)
    key[0].ord
  end
end
