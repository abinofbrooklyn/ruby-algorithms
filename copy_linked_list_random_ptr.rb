# Definition for Node.
# class Node
#     attr_accessor :val, :next, :random
#     def initialize(val = 0)
#         @val = val
#		  @next = nil
#		  @random = nil
#     end
# end

# @param {Node} node
# @return {Node}

def copyRandomList(head)
  return nil if !head
  @hash = {}
  copy(head)
  @hash[head]
end

def copy(head)
  return nil if !head
  return @hash[head] if @hash[head]

  node = Node.new(head.val)

  @hash[head] = node

  node.next = copy(head.next)
  node.random = copy(head.random)
  node
end
