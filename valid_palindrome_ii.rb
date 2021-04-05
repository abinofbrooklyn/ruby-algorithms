def valid_palindrome(s)
    l, r = 0, s.length-1
      while l < r
        if s[l] == s[r]
          l+=1
          r-=1
        else
          return s[l+1..r].reverse == s[l+1..r] || s[l..r-1].reverse == s[l..r-1]
        end
      end

  true
end
