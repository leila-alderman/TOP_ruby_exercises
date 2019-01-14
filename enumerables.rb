module Enumerable
    def my_each
        for i in 0..(self.length-1)
            yield(self[i])
        end
        return self
    end

    def my_each_with_index
        for i in 0..(self.length-1)
            yield(self[i], i)
        end
        return self
    end

    def my_select
        result = []
        for i in 0..(self.length-1)
            result << self[i] if yield(self[i]) == true
        end
        return result
    end

    def my_all?
        for i in 0..(self.length-1)
            return false if yield(self[i]) == false
        end
        return true
    end

    def my_any?
        for i in 0..(self.length-1)
            return true if yield(self[i]) == true
        end
        return false
    end

    def my_none?
        for i in 0..(self.length-1)
            return false if yield(self[i]) == true
        end
        return true
    end

    def my_count
        return self.length
    end

    def my_map(input_proc = 0)
        result = []
        if block_given?
            for i in 0..(self.length-1)
                result << yield(self[i])
            end
        else
            for i in 0..(self.length-1)
                result << input_proc.call(self[i])
            end
        end
        return result
    end

    def my_inject(initial_value = 0)
        result = initial_value
        for i in 0..(self.length-1)
            result = yield(result, self[i])
        end
        return result
    end


end

def multiply_els(arr)
    arr.my_inject(1) {|total, x| total*x }
end