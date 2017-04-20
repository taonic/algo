# The count-and-say sequence is the sequence of integers beginning as follows:
# 1, 11, 21, 1211, 111221, ...
# 1 is read off as one 1 or 11.
# 11 is read off as two 1s or 21.
# 21 is read off as one 2, then one 1 or 1211.
# Given an integer n, generate the nth sequence.
# Note: The sequence of integers will be represented as a string.
# Example:
# if n = 2,
# the sequence is 11.

class Solution
  def count_and_say(input)
    return '1' if input == 1
    return '11' if input == 2
    str = '11'
    for _ in (3..input)
      tmp = ''
      count = 1
      for j in (1..str.size)
        if str[j] == str[j-1]
          count += 1
        else
          tmp += count.to_s
          tmp += str[j-1]
          count = 1
        end
      end
      str = tmp
    end
    str
  end
end

puts Solution.new.count_and_say(6)
