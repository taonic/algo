def max_sub_array(input, k)
  max, acc = 0, 0
  map = {0 => -1}
  for i in (0...input.size)
    acc += input[i]
    if map[acc].nil?
      map[acc] = i
    end
    if map[acc - k]
      max = [max, i - map[acc - k]].max
    end
  end
  max
end

puts max_sub_array([-2, -1, 2, 1], 3)
