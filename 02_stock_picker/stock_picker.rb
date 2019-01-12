def picker(arr)

    max_profit = 0
    for i in 0..(arr.length-1)
        sell = (arr.length-1) - i
        for j in 0..(arr.length-i-1)
            buy = j
            profit = arr[sell] - arr[buy]
            if profit > max_profit
                max_profit = profit
                days = [buy, sell]
            end
        end
    end


    return days
end