def valid_ip_address(ip)
    tryIP4 = ip.split(".")
    tryIP6 = ip.split(":")
    if tryIP4.length == 4 && ip[0] != "." && ip[-1] != "."
        valid = validateIPv4(tryIP4)
        return "IPv4" if valid
    elsif tryIP6.length == 8 && ip[0] != ":" && ip[-1] != ":"
        valid = validateIPv6(tryIP6)
        return "IPv6" if valid
    end
    "Neither"
end

def validateIPv4(groups)
    groups.each do |group|
        return false if group[0] == '0' && group != '0'
        return false if group.length < 1
        return false if group.to_i > 255
        digits = '1234567890'.chars
        group.each_char {|char| return false if !digits.include?(char)}
    end
    true
end

def validateIPv6(groups)
    groups.each do |group|
        return false if group.length < 1 || group.length > 4
        chars = "1234567890abcdefABCDEF".chars
        group.each_char {|char| return false if !chars.include?(char)}
    end
    true
end
