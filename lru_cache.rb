class LRUCache

=begin
    :type capacity: Integer
=end
    def initialize(capacity)
        @capacity = capacity
        @elems = {}
    end


=begin
    :type key: Integer
    :rtype: Integer
=end
    def get(key)
        val = @elems.delete(key)
        if val
            @elems[key] = val
        else
            -1
        end
    end


=begin
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
    def put(key, value)
        @elems.delete(key)
        @elems[key] = value
        @elems.delete(@elems.first.first) if @elems.length > @capacity
    end


end
