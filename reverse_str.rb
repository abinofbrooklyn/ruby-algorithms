def reverse_string(s)
    return "" if s.length == 0
    left, right = 0, s.length-1
    while left < right
        tmp = s[left]
        s[left] = s[right]
        s[right] = tmp
        left += 1
        right -= 1
    end
    s
end
