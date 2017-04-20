class Solution
  # param a : array of array of integers
  # return an integer
  def unique_paths_with_obstacles(a)
      h = a.size
      w = a[0].size
      if a[0][0] == 1 || a[h-1][w-1] == 1
        return 0
      end

      dp = Array.new(h){ Array.new(w) }

      blocked = false
      for i in (0...w)
        if a[0][i] == 1 || blocked
          blocked = true
          dp[0][i] = 0
        else
          dp[0][i] = 1
        end
      end

      blocked = false
      for i in (0...h)
        if a[i][0] == 1 || blocked
          blocked = true
          dp[i][0] = 0
        else
          dp[i][0] = 1
        end
      end

      for i in (1...h)
        for j in (1...w)
          dp[i][j] = a[i][j] == 0 ? dp[i-1][j] + dp[i][j-1] : 0
        end
      end
      dp[h-1][w-1]
  end

  def unique_paths(m, n)
    dp = Array.new(m){ Array.new(n) }
    for i in (0...m)
      dp[i][0] = 1
    end

    for i in (1...n)
      dp[0][i] = 1
    end

    for i in (1...m)
      for j in (1...n)
        dp[i][j] = dp[i-1][j] + dp[i][j-1]
      end
    end
    dp[m-1][n-1]
  end
end

a = [
  [0,0,0],
  [0,1,0],
  [0,0,0]
]

puts Solution.new.unique_paths_with_obstacles(a)
