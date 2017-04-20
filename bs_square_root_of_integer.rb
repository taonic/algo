# Implement int sqrt(int x).
# Compute and return the square root of x.
# If x is not a perfect square, return floor(sqrt(x))
# Example :
# Input : 11
# Output : 3
# DO NOT USE SQRT FUNCTION FROM STANDARD LIBRARY

class Solution
  def sqrt(input)
    low = 0
    high = input
    mid = high
    while low < high && mid > low
      mid = (high + low) / 2
      if mid ** 2 > input
        high = mid
      elsif mid ** 2 < input
        low = mid
      else
        return mid
      end
    end
    mid
  end
end

puts Solution.new.sqrt(12)
