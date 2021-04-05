def count_substrings(s)
  len = count = s.length
  return count if len == 0

  (0..len).each do |i|
    left, right = i, i+1
    while left > -1 && right < len and s[left] == s[right]
      left -= 1
      right += 1
      count += 1
    end

    left, right = i, i + 2
    while left > -1 && right < len and s[left] == s[right]
      left -= 1
      right += 1
      count += 1
    end
  end
  count
end
