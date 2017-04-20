class Solution
  def subsets(input)
    @results = []
    iterate(input, 0, [])
    @results
  end

  def iterate(input, start, path)
    @results << path
    for i in (start...input.size)
      iterate(input, i + 1, path + [input[i]])
    end
  end
end

puts Solution.new.subsets("123").inspect
