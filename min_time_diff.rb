def find_min_difference(time_points)
    min, arr = 1440, []
    time_points.each do |time|
        h,m = time.split(":")
        arr << (h.to_i)*60 + m.to_i
    end
    arr.sort!
    0.upto(arr.length-1) do |i|
        if i == 0
            tmp = 1440 - (arr[i-1]).abs + arr[i]
        elsif arr[i] == arr[i-1]
            tmp = 0
        else
            tmp = arr[i] - arr[i-1]
        end
        min = [min, tmp].min
    end
    min
end
