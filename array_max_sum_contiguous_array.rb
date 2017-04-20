class Solution
  # param a : array of integers
  #return an integer
  def max_sub_array(a)
    max_temp = max_result = a[0]
    for e in a
      max_temp = [e, max_temp + e].max
      max_result = [max_result, max_temp].max
    end
    max_result
  end
end

puts Solution.new.max_sub_array([-2,1,-3,4,-1,2,1,-5,4])
