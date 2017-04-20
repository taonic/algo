def palindromic(input)
  input.size.downto(0).each do |i|
    puts i
    for j in (i..input.size)
      puts input[j..i]
    end
  end
end

palindromic('bananas')

# b, a, n, a, n, a, s
# a, 1, 0, 1, 0, 1, 0
# n, 0, 1, 0, 1, 0, 0
# a, 1, 0, 1, 0, 1, 0
# n, 0, 1, 0, 1, 0, 0
# a, 1, 0, 1, 0, 1, 0
# s, 0, 0, 0, 0, 0, 0
