class Solution
    # param a : array of integers
    #return an integer
    def maxProfit(a)
      total = 0
      for i in (0...a.size-1)
        if a[i+1] > a[i]
          total += a[i+1] - a[i]
        end
      end
      total
    end

    def max_profit_2_trans(a)
      min = -(2**(0.size * 8 -2))
      sell1 = 0
      sell2 = 0
      buy1 = min
      buy2 = min
      for p in a
        buy1 = [buy1, -p].max
        sell1 = [sell1, buy1 + p].max
        buy2 = [buy2, sell1 - p].max
        sell2 = [sell2, buy2 + p].max
      end
      sell2
    end

    def max_profit_1_trans(a)
      min = -(2**(0.size * 8 -2))
      sell1 = 0
      buy1 = min
      for p in a
        buy1 = [buy1, -p].max
        sell1 = [sell1, buy1 + p].max
      end
      sell1
    end

    def max_profit(a)
      min = 10000000000000000
      max_profit = 0
      for i in (0...a.size)
        min = [min, a[i]].min
        max_profit = [max_profit, a[i] - min].max
      end
      max_profit
    end
end

puts Solution.new.maxProfit([1,2,6])
puts Solution.new.max_profit_2_trans([1,2,6])
puts Solution.new.max_profit_1_trans([1,2,6])
puts Solution.new.max_profit([7, 1, 5, 3, 6, 4])
