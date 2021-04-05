def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, i|
    diff = target-num
    return [hash[diff],i] if hash[diff]
    hash[num] = i
  end
end
