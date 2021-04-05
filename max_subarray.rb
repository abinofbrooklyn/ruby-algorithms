def max_sub_array(nums)
    max_subs = []
    max = -1.0/0.0
    nums.each_index do |i|
        max_subs[i] = [(max_subs[i-1] || 0) + nums[i], nums[i]].max
        max = [max, max_subs[i]].max
    end
    max
end
