def length_of_longest_substring(s)
  seen, start, len, longest = {}, 0, 0, 0
  s.each_char.each_with_index do |c, i|
    if seen.include?(c) && seen[c] >= start
      start = seen[c] + 1
      len = i - seen[c]
      seen[c] = i
    else
      seen[c] = i
      len += 1
    end
    if longest < len
      longest = len
    end
  end
  longest
end
