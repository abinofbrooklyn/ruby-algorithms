def decode_string(s)
    stack, curr_string, curr_num = [], '', 0
    digits = '0123456789'.chars

    s.each_char do |c|
      if c == '['
        stack << curr_string
        stack << curr_num
        curr_num = ''
        curr_num = 0
      elsif c == ']'
        num = stack.pop
        prev_string = stack.pop
        curr_string = prev_string + curr_string * num
      elsif digits.include?(c)
        curr_num = curr_num * 10 + c.to_i
      else
        curr_string += c
      end
    end
    curr_string
end
