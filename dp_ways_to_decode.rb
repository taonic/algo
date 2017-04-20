class Solution
  # param a : string
  # return an integer
  def numDecodings(a)
    dp = [0] * a.size
    dp[0] = 1
    for i in (1...a.size)
      if a[i].to_i >= 1 && a[i].to_i <= 9
        dp[i] = dp[i - 1]
      end
      if (a[i-1] + a[i]).to_i >= 10 && (a[i-1] + a[i]).to_i <= 26
        if i == 1
          dp[i] += 1
        else
          dp[i] += dp[i - 2]
        end
      end
    end
    dp.last
  end
end

puts Solution.new.numDecodings('12201')
