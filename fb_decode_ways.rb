class Solution
  def decode_ways(input)
    dict = (1..26).map{|digit| (digit + 64).chr}
    m1, m2 = 1, 1
    for i in (1...input.size)
      if input[i-1] == '1' || (input[i-1] == '2' && input[i].to_i <= 6)
        m1, m2 = m1 + m2, m1
      else
        m1 = m1
      end
    end
    m1
  end
end

puts Solution.new.decode_ways('12')
