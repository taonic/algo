# Given an array with n objects colored red, white or blue,
# sort them so that objects of the same color are adjacent, with the colors in the order red, white and blue.
# Here, we will use the integers 0, 1, and 2 to represent the color red, white, and blue respectively.
# Note: Using library sort function is not allowed.
# Example :
# Input : [0 1 2 0 1 2]
# Modify array so that it becomes : [0 0 1 1 2 2]

class Solution
  def sort_colors(input)
    low = 0
    cur = 0
    high = input.size - 1
    while cur <= high
      if input[cur] == 0
        input[cur], input[low] = input[low], input[cur]
        cur += 1
        low += 1
      elsif input[cur] == 2
        input[cur], input[high] = input[high], input[cur]
        high -= 1
      else
        cur += 1
      end
    end
    input
  end
end

puts Solution.new.sort_colors([0,1,2,0,1])
