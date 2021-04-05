def get_decimal_value(head)
    result = 0
    while head
        result *= 2
        result += head.val
        head = head.next
    end
    result
end
