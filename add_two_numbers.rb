def add_two_numbers(l1, l2)
    p1, p2, carry = l1, l2, 0
    dummy_head = ListNode.new
    new_list_ptr = dummy_head

    while p1 || p2
        num1 = p1 != nil ? p1.val : 0
        num2 = p2 != nil ? p2.val : 0
        total = num1 + num2 + carry
        carry = total / 10
        new_list_ptr.next = ListNode.new(total % 10)
        if p1 != nil
            p1 = p1.next
        end
        if p2 != nil
            p2 = p2.next
        end
        new_list_ptr = new_list_ptr.next
    end

    if carry > 0
        new_list_ptr.next = ListNode.new(carry)
    end
    dummy_head.next
end
