def is_interleave(s1, s2, s3)
  n = s1.length
  m = s2.length
  total = s3.length
  return false if total != n + m

  arr = Array.new(n+1){Array.new(m+1, false)}

  0.upto(n) do |i|
    0.upto(m) do |j|
      if i == 0 && j == 0
        arr[i][j] = true
      elsif i == 0 && j != 0
        arr[i][j] = arr[i][j-1] && s2[i][j-1] == s3[i+j-1]
      elsif i != 0 && j == 0
        arr[i][j] = arr[i-1][j] && s1[i-1][j] == s3[i+j-1]
      else
        arr[i][j] = (arr[i][j-1] && s2[i][j-1] == s3[i+j-1] || arr[i-1][j] && s1[i-1][j] == s3[i+j-1])
      end
    end
  end
  arr[n][m]
end
