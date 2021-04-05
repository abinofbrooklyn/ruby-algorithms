def merge_intervals(intervals)
  intervals.sort_by! { |i| i[0]}
  merged = [intervals[0]]
  intervals.each do |interval|
    previous = merged.last
    if interval[0] <= previous[1]
      previous[1] = [previous[1], interval[1]].max
    else
      merged << interval
    end
  end
  merged
end
