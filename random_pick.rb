class Solution

=begin
    :type w: Integer[]
=end
    def initialize(w)
      @sum, @total = [], 0
      @prng = Random.new
      w.each {|x| @sum << (@total += x)}
    end

=begin
    :rtype: Integer
=end
    def pick_index()
      rand = @prng.rand(@total)
      low, high = 0, @sum.size - 1
      while low != high
          mid = (low + high) / 2
          rand >= @sum[mid] ? (low = mid + 1) : (high = mid)
      end
      low
    end


end
