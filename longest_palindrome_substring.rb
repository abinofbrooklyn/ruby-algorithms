def longest_palindrome(s)
    return "" if s.nil?
    start = finish = 0
    s.each_char.with_index do |_, i|
        s1 = expand(s,i,i)
        s2 = expand(s,i,i+1)
        len = [s1,s2].max

        if len > finish - start
            start = i - (len-1) / 2
            finish = i + len / 2
        end
    end
    s[start..finish]
end

def expand(s,left,right)
    while left >= 0 && right < s.length && s[left] == s[right]
        left -= 1
        right += 1
    end
    right - left - 1
end
