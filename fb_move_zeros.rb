def move_zeros(input)
  non_zeroes = 0
  for i in (0...input.size)
    if input[i] != 0
      input[non_zeroes] = input[i]
      non_zeroes += 1
    end
  end
  for i in (non_zeroes...input.size)
    input[i] = 0
  end
  input
end

puts move_zeros([1,2,0,1,2,0])
