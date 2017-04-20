class Solution
  def word_break(input, dict)
    dp = Array.new(input.size) { false }
    for i in (1...input.size)
      for j in (0...i)
        if (dp[j-1] || j == 0) && dict.include?(input[j..i])
          dp[i] = true
          break
        end
      end
    end
    dp[input.size-1]
  end
end

puts Solution.new.word_break('sheephorsedog', ['dog', 'horse', 'sheep'])
