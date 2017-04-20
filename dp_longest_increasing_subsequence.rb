class Solution
  # param a : array of integers
  # return an integer
  def longest_increasing_subsequence(a)
    m = [1] * a.size
    for i in (0...a.size)
      for j in (0..i)
        if a[i] > a[j]
          m[i] = [m[i], m[j] + 1].max
        end
      end
    end
    m.max
  end
end

puts Solution.new.longest_increasing_subsequence([0, 8, 4, 12, 2, 10, 6, 14, 1, 9, 5, 13, 3, 11, 7, 15])
