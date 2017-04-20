# [ 1, 2, 3 ],
# [ 8, 9, 4 ],
# [ 7, 6, 5 ]

# [ 1, 2, 3, 4 ],
# [ 12, 13, 14, 5 ],
# [ 11, 16, 15, 6 ]
# [ 10, 9, 8, 7 ]

class Solution
  # param a : integer
  # return a array of array of integers
  def generateMatrix(a)
    value = 1
    x = 0
    y = -1
    di = 0
    hit = 0
    directions = ['right', 'down', 'left', 'up']
    matrix = Array.new(a){Array.new(a)}
    while true
      direction = directions[di % 4]
      case direction
      when 'right'
        y += 1
      when 'down'
        x += 1
      when 'left'
        y -= 1
      when 'up'
        x -= 1
      end
      if x >= 0 && y >= 0 && x < a && y < a && matrix[x][y].nil?
        matrix[x][y] = value
      else
        di += 1
        hit += 1
        return matrix if hit == 2
      end
      value += 1
    end
  end
end

Solution.new.generateMatrix(3).each do |a|
  puts a
  puts '==='
end
