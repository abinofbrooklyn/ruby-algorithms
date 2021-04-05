def rob(nums)
  return 0 if nums.empty?
  return nums[0] if nums.length == 1
  dp = [nums[0], [nums[0], nums[1]].max]

  2.upto(nums.lenght-1) do |i|
    dp[i] << [dp[i-2] + nums[i], dp[i-1]].max
  end
  dp[nums.length-1]
end
