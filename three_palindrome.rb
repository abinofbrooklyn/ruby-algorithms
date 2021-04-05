def three_palindrome(num1, num2)
  largest_so_far = 0
  result = []

  999.downto(num1) do |i|
    999.downto(num2) do |j|
      product = i * j
      product_to_s = product.to_s
      if product_to_s == product_to_s.reverse
        if largest_so_far < product
          largest_so_far = product
          result << [i, j, largest_so_far]
        end
      end
    end
  end
  result
end
