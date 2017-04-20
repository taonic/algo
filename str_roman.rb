class Solution
  # 1000, 2000, 3000
  M = ['', 'M', 'MM', 'MMM']
  # 100, 200, 300, .. 900
  C = ['', 'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM']
  # 10, 20, ... 90
  X = ['', 'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC']
  # 1, 2, ... 9
  I = ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX']

  def to_roman(num)
    "#{M[num / 1000]}#{C[(num%1000)/100]}#{X[(num%100)/10]}#{I[num%10]}"
  end

  DICT = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }

  def to_int(roman)
    result = 0
    for i in (0...roman.size)
      char = roman[i]
      next_char = roman[i+1]
      if next_char && DICT[char] < DICT[next_char]
        result -= DICT[char]
      else
        result += DICT[char]
      end
    end
    result
  end
end

roman = Solution.new.to_roman(365)
puts Solution.new.to_int('MDCCCIV')
