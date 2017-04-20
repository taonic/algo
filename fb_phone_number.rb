class Solution
  DICT = ['0', '1', 'abc', 'def', 'ghi', 'jkl', 'mno', 'pqrs', 'tuv', 'wxyz']

  def phone_number(input)
    results = ['']
    input.to_s.split('').each do |digit|
      str = DICT[digit.to_i]
      new_result = []
      str.split('').each do |char|
        results.each do |result|
          new_result << result + char
        end
      end
      results = new_result
    end
    results
  end
end

puts Solution.new.phone_number('23')
