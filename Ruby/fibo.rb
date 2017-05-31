class FibSequence
    @num = []
    def initialize(n)
        @num = getSequence(1, n, [])
    end
    
    # Careful: Doing count from 1 here
    def getSequence(start, n, lst)
        if start > n
            return lst
        else
            if start == 1 or start == 2
                return getSequence(start + 1, n, lst.push(1))
            else
                return getSequence(start+1, n, lst.push(lst[start-3] + lst[start-2]))
            end
        end
    end
end


# TODO: This is not working properly... Why?
f = FibSequence.new(6)
f.each { |s| print(s, ":")}