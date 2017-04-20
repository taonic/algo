class Solution
    # param a : string
    # param b : string
    # return an integer
    def isMatch(s, p)
      dp = Array.new(s.size + 1) { Array.new(p.size + 1) }
      dp[0][0] = true
      for i in (1...s.size)
        for j in (1...p.size)
          dp[i][j] = if s[i] == p[j] || p[j] = '.'
                       dp[i-1][j-1]
                     elsif p[j] == '*'
                       if p[j-1] != s[i]
                         dp[i][j-2]
                       else
                         dp[i-1][j-1]
                       end
                     end
        end
      end
    end
end
