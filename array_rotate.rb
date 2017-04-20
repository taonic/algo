# You are given an n x n 2D matrix representing an image.
# Rotate the image by 90 degrees (clockwise).
# You need to do this in place.
# Note that if you end up using an additional array, you will only receive partial score.
# Example:
# If the array is
# [
#     [1, 2],
#     [3, 4]
# ]
# Then the rotated array becomes:
# [
#     [3, 1],
#     [4, 2]
# ]

class Solution
    def rotate(a)
      a.reverse!.tap do |a|
        for i in (0...a.size)
          for j in (0...i)
            a[i][j], a[j][i] = a[j][i], a[i][j]
          end
        end
      end
    end

    def reverse(b)
      j, i = b.size - 1, 0
      while j > i
        b[i], b[j] = b[j], b[i]
        j -= 1
        i += 1
      end
      b
    end
end

puts Solution.new.rotate(
  [
    [1,2,3],
    [4,5,6],
    [7,8,9]
  ]
).inspect

puts Solution.new.reverse([1,2,3,4,5])
