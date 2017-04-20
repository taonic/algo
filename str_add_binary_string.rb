# Given two binary strings, return their sum (also a binary string).
# Example:
# a = "100"
# b = "11"
# Return a + b = “111”.
#
class Solution
  def add_binary(a, b)
    max_len = [a.size, b.size].max
    nxt = 0
    result = []
    for i in (1..max_len)
      av = a.size - i < 0 ? 0 : a[a.size - i].to_i
      bv = b.size - i < 0 ? 0 : b[b.size - i].to_i
      cur = av + bv + nxt
      if cur >= 2
        nxt = 1
        cur = cur % 2
      else
        nxt = 0
      end
      result.unshift(cur.to_s)
    end
    if nxt != 0
      result.unshift(nxt)
    end
    result.join
  end
end

puts Solution.new.add_binary('1010110111001101101000', '1000011011000000111100110')
