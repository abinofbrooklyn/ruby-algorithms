class Solution
  def most_appointments(appointments, k)
      appointment_hash, results = {}, []
      appointments.each {|a| appointment_hash.include?(a) ? appointment_hash[a] += 1 : appointment_hash[a] = 1}
      1.upto(31) do |i|
        sum_array = []
        count = 0
        tmp = i
        while count < k
          sum_array << appointment_hash.fetch(tmp, 0)
          tmp += 1
          count += 1
        end
        count = 0
        total = sum_array.inject(0) {|sum,x| sum + x}
        results << total
      end
      results.max
  end
end

s = Solution.new
puts "max value is #{s.most_appointments([23,23,26,21,1,2,2,2,4,6,24,25], 6)}"
puts "max value is #{s.most_appointments([23,23,26,21,1,2,1,2,2,2,4,6,24,25], 6)}"
