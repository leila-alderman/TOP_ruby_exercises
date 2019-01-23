def merge_sort(arr)
    return arr if arr.length < 2
    
    a = merge_sort(arr[0...arr.length/2])
    b = merge_sort(arr[arr.length/2..-1])
    result = []
    until a.empty? || b.empty?
        if a[0] <= b[0]
            result << a.shift
        else
            result << b.shift
        end
    end
    result + a + b
end