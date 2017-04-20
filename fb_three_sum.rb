# Given an array S of n integers, find three integers in S such that the sum is closest to a given number, target.
# Return the sum of the three integers.
# Assume that there will only be one solution
# Example:
# given array S = {-1 2 1 -4},
# and target = 1.
# The sum that is closest to the target is 2. (-1 + 2 + 1 = 2)

class Solution
  def three_sum(input, target)
    input.sort!
    best_sum = 100000000000000
    for i in (0...input.size - 1)
      j, k = i + 1, input.size - 1
      while j != k
        sum = input[i] + input[j] + input[k]
        if(target - sum).abs < (target - best_sum).abs
          best_sum = sum
        end
        if sum > target
          k -= 1
        else
          j += 1
        end
      end
    end
    best_sum
  end
end

puts Solution.new.three_sum([-1,2,1,-4], 1)
