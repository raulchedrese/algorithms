def binary_search(needle, haystack)
  low = 0
  high = (haystack.length - 1)

  while low <= high do
    mid = (low + high)
    guess = haystack[mid]
    if guess == needle
      return mid
    end
    if guess > needle
      high = mid - 1
    else
      low = mid + 1
    end
  end

  return nil
end