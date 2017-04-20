class Solution
  def flatten(input)
    @result = []
    flat(input)
    @result
  end

  def flat(input)
    input.each do |e|
      if e.is_a?(Array)
        flat(e)
      else
        @result << e
      end
    end
  end
end

puts Solution.new.flatten([[1,[2,3],1],2,[1,1]])
