class Solution
  def remove_parentheses(input)
    remove(input.dup, 0, 0, ['(', ')'])
  end

  def remove(input, start, last_removal, pairs)
    stack = 0
    for i in (start...input.size)
      if input[i] == pairs[0]
        stack += 1
      elsif input[i] == pairs[1]
        stack -= 1
      end
      if stack < 0
        for j in (last_removal...i)
          if input[j] == pairs[1] && (j == last_removal || input[j-1] == pairs[0])
            remove(input[0..j-1] + input[j+1..-1], i, j, pairs)
          end
        end
        return
      end
    end
    if pairs.first == '('
      remove(input.dup.reverse, 0, 0, [')', '('])
    else
      results << input.reverse
    end
  end

  def results
    @results ||= []
  end
end

solution = Solution.new
solution.remove_parentheses('()())()')
puts solution.results

