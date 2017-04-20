# Given an input string, reverse the string word by word.
# Example:
# Given s = "the sky is blue",
# return "blue is sky the".

class Solution
  def reverse(input)
    word = ''
    result = ''
    for i in (input.size - 1).downto(0)
      if input[i] == ' '
        result += "#{word} " if word != ''
        word = ''
      else
        word = input[i] + word
      end
    end
    result + word
  end
end

puts Solution.new.reverse("the sky  is  blue")
