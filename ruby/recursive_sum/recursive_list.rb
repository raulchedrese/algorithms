class List
  def self.sum(numbers)
    return 0 if numbers.empty?
    return numbers.first if numbers.length == 1
  
    head, *tail = numbers
    return head + sum(tail)
  end
  
  def self.count(items)
    return 0 if items.empty?
    return 1 if items.length == 1
    
    _head, *tail = items
    return 1 + count(tail)
  end
  
  def self.max(numbers)
    return 0 if numbers.empty?
    return numbers.first if numbers.length == 1
    
    head, *tail = numbers
    max = self.max(tail)

    if head > max
      return head
    end
    return max
  end
  
  def self.quick_sort(numbers)
    if numbers.length < 2
      return numbers
    else
      pivot = numbers[0]
      smaller_than_pivot = []
      greater_than_pivot = []
      numbers.each do |number|
        if number < pivot
          smaller_than_pivot.push(number)
        elsif number > pivot
          greater_than_pivot.push(number)
        end
      end
      return quick_sort(smaller_than_pivot)
        .concat([pivot])
        .concat(quick_sort(greater_than_pivot))
    end
  end
end
