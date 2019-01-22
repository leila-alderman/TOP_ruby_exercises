def merge_sort(arr)
    if arr.length <= 2
        return arr
    else
        a = merge_sort(arr.slice!(0..arr.length/2))
        b = merge_sort(arr)
    end
    result = []
    for i in 1..arr.length
        if a[0] <= b[0]
            result << a.shift
        else
            result << b.shift
        end
    end
    return result
end