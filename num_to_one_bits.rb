def hamming_weight(n)
    ans = 0
    while n > 0
        ans += 1 if n % 2 == 1
        n = n / 2
    end
    ans
end
