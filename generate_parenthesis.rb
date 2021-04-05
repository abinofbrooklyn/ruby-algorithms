def generate_parenthesis(n)
    result = []
    generate(n, "", result)
    result
end

def generate(n, curr, result)
    if curr == ""
        generate(n, "(", result)
    elsif curr.count("(") == n and curr.count(")") == n
        result << curr
    elsif curr.count("(") == curr.count(")")
        generate(n, curr + "(", result)
    elsif curr.count("(") > curr.count(")")
        generate(n, curr + "(", result) if curr.count("(") < n
        generate(n,  curr + ")", result)
    end
end
