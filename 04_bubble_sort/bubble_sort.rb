def bubble_sort(arr)
    sorted = false                   # flag to indicate whether sorting is finished
    while sorted == false            # optimize the algorithm to know whether sorting is finished
        sort_count = 0
        for i in 0..(arr.length-2)   # from the first element in the array to the second to last element
            if arr[i] > arr[i+1]
                large = arr[i]      # save these array elements in variables
                small = arr[i+1]
                arr[i] = small      # swap the two array elements
                arr[i+1] = large
                sort_count += 1     # indicate that sorting was required
            end
        end
        if sort_count == 0          # if no sorting was needed, exit the while loop
            sorted = true
        end
    end
    return arr
end

def bubble_sort_by(arr)
    sorted = false
    while sorted == false
        sort_count = 0
        for i in 0..(arr.length-2)
            if yield(arr[i], arr[i+1]) > 0  # yield to the block to determine order
                to_right = arr[i]
                to_left = arr[i+1]
                arr[i] = to_left
                arr[i+1] = to_right
                sort_count += 1
            end
        end
        if sort_count == 0
            sorted = true
        end
    end
    return arr
end