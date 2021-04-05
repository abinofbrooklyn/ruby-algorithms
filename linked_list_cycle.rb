def hasCycle(head)
    slow = fast = head
    while fast && fast.next
        fast = fast.next.next
        slow = slow.next
        return true if slow == fast
    end
    false
end
