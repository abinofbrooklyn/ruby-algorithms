#most sequences

def change(amount, coins)
  return 1 if amount == 0
  dp = Array.new(amount + 1, 0)

  coins.each do |c|
    dp[c] += 1 if c <= amount
    i = c + 1
    while i < dp.length
      dp[i] += dp[i-c]
      i += 1
    end
  end
  dp.last
end
