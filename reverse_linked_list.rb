class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

@param {ListNode} head
@return {ListNode}

def reverse_list(head)
    previous, current = nil, head
    while current
        _next = current.next
        current.next, current, previous = previous, _next, current
    end
    previous
end
