def decode_ways(s)
  return 0 if s.empty?
  n = s.length
  memo = []
  memo[n] = 1
  memo[n-1] = s[n-1] != '0' ? 1 : 0

  (n-2).upto(0) do |i|
    if s[i] == '0'
      memo[i] = 0
    else
      if s[i..i+1].between?('1','26')
        memo[i] = memo[i+1] + memo[i+2]
      else
        memo[i] = memo[i+1]
      end
    end
  end
  memo[0]
end
