# Suppose a sorted array A is rotated at some pivot unknown to you beforehand.
# (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
# (i.e., 0 1 2 4 5 6 7 might become 5 6 7 0 | 1 2 3 4).
# Find the minimum element.
# The array will not contain duplicates.

class Solution
  def pivot(input)
    low = 0
    high = input.size - 1
    while low < high
      mid = (low + high) / 2
      if input[mid] > input[mid + 1]
        return mid + 1
      elsif input[mid + 1] > input[high]
        low = mid + 1
      else
        high = mid
      end
    end
  end

  def binary_search(input, low, high, target)
    if low == high
      return low
    end
    while low <= high
      mid = (low + high) / 2
      mid_value = input[mid]
      if target == input[high]
        return high
      elsif target < mid_value
        high = mid
      elsif target > mid_value
        low = mid
      else
        return mid
      end
    end
    mid
  end

  def find(input, target)
    pivot = pivot(input)
    if target > input[pivot] && target <= input.last
      binary_search(input, pivot, input.size - 1, target)
    else
      binary_search(input, 0, pivot - 1, target)
    end
  end
end

puts Solution.new.find([5,0,1,2,3,4,5], 5)
