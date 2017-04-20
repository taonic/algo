class Solution
  def min_rooms(intervals)
 c8   starts = intervals.map{|i| i.first}.sort
    ends = intervals.map{|i| i.last}.sort
    i, j = 0, 0
    rooms = 0
    avail = 0

    while i < intervals.size
      if starts[i] <= ends[j]
        if avail <= 0
          rooms += 1
        else
          avail -= 1
        end
        i += 1
      else
        avail += 1
        j += 1
      end
    end
    rooms
  end
end

puts Solution.new.min_rooms([[0, 30],[5, 10],[15, 20]])
