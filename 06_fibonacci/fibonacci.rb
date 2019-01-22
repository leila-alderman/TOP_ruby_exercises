def fibs(n)
    result = [0, 1]
    for i in 2..n-1
        result << result[i-2] + result[i-1]
    end
    return result
end

def fibs_rec(n, result = [0, 1])
    result.length == n ? result : fibs_rec(n, result << result[-2] + result[-1])
end