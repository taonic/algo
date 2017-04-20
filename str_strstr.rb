#  strstr - locate a substring ( needle ) in a string ( haystack )
class Solution
  def strstr(haystack, needle)
    for i in (0...haystack.size)
      for j in (0...needle.size)
        if haystack[i + j] != needle[j]
          break
        end
        if j == needle.size - 1
          return i
        end
      end
    end
  end
end

puts Solution.new.strstr('bbaabbbbbaabbaabbbbbbabbbabaabbbabbabbbbababbbabbabaaababbbaabaaaba', 'babaaa')
