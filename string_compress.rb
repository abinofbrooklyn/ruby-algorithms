def compress(s)
  read, write, count = 0, 0, 0

  while read < s.length
    count += 1
    if s[read+1] != s[read]
      s[write] = s[read]
      write += 1

      if count > 1
        count.to_s.each_char do |c|
          s[write] = c
          write += 1
        end
      end
      count = 0
    end
    read += 1
  end
  write
end
