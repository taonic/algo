class Solution
  def diffk(input, diff)
    hash = input.each_with_object({}){ |e, result| result[e - diff] = e }
    for i in (0..input.size)
      if hash[input[i]]
        return true
      end
    end
    false
  end

  def diffk2(input, diff)
    len = input.size
    i, j = 1, 0
    while i < len && j < len
      if input[i] - input[j] == diff && i != j
        return 1
      elsif input[i] - input[j] > diff
        j += 1
      else
        i += 1
      end
    end
    0
  end
end

puts Solution.new.diffk2([1,2,2,3,4], 0)
