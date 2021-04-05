# @param {String} s
# @return {Integer}
def calculate(s)
    stack, num, operator = [], 0, "+"
    operators = ["+","-","*","/"]
    digits = "0123456789".chars

    s.chars.each_index do |idx|
        char = s[idx]
        if digits.include?(char)
            num = num * 10 + char.to_i
        end

        if operators.include?(char) or idx == s.length-1
            if operator == "+"
                stack << num
            elsif operator == "-"
                stack << -num
            elsif operator == "*"
                stack[-1] *= num
            elsif operator == "/"
                stack[-1] = (stack[-1].to_f/num).to_i
            end
            num, operator = 0, char
        end
    end
    stack.sum
end
