require 'set'
class Solution
  def get_shortest_unique_substring(arr, str)
    curr = {}
    unique = Set.new(arr)
    left = right = 0
    output = ""
    output_length = Float::INFINITY

    while right < str.length
      curr[str[right]] = curr.fetch(str[right], 0) + 1
      while left < right && curr.include?(str[left]) && curr[str[left]] > 1
        if !unique.include?(str[left])
          left += 1
          next
        end
        curr[str[left]] = curr.fetch(str[left], 0) - 1
        left += 1
      end
      if curr.length >= unique.length && is_valid(unique, curr.keys)
        tmp = str[left, right+1]
        if tmp.length < output_length
          output = tmp
          output_length = tmp.length
        end
      end
      right += 1
    end
    output
  end

  def is_valid(arr, keys)
    arr.each do |c|
      return false if !keys.include?(c)
    end
    true
  end
end


s = Solution.new
puts s.get_shortest_unique_substring(["A","B","C"], "ADOBECODEBANCDDD")
