class Solution
  def intersect(a, b)
    result = []
    i, j = 0, 0
    while i < a.size && j < b.size
      if a[i] == b[j]
        result << a[i]
        i += 1
        j += 1
      elsif a[i] > b[j]
        j += 1
      elsif
        i += 1
      end
    end
    result
  end
end

puts Solution.new.intersect([1,2,3], [2,3,4, 5,6,7])
