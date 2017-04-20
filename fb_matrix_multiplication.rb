class Solution
  def multiply(a, b)
    a_rows, a_cols, b_cols = a.size, a[0].size, b[0].size
    c = Array.new(a_rows){ Array.new(b_cols){ 0 } }
    for a_row in (0...a_rows)
      for a_col in (0...a_cols)
        if a[a_row][a_col] != 0
          for b_col in (0...b_cols)
            if b[a_col][b_col] != 0
              c[a_row][b_col] += a[a_row][a_col] * b[a_col][b_col]
            end
          end
        end
      end
    end
    c
  end
end

a = [
  [ 1, 0, 0],
  [-1, 0, 3]
]

b = [
  [ 7, 0, 0 ],
  [ 0, 0, 0 ],
  [ 0, 0, 1 ]
]

puts Solution.new.multiply(a, b).inspect
