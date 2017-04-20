class Solution
  def merge_intervals(input)
    results = []
    intervals = input.sort_by {|interval| interval.first}
    start = intervals.first.first
    finish = intervals.first.last
    intervals.each do |interval|
      if interval.first < finish
        finish = [finish, interval.last].max
      else
        results << [start, finish]
        start, finish = interval.first, interval.last
      end
    end
    results << [start, finish]
  end
end

puts Solution.new.merge_intervals([[1,3],[2,6],[8,10],[15,18]]).inspect
