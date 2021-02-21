def stock_picker(arr)
    result = Hash.new(0)
    for b in 0..arr.length-1
        for s in b..arr.length-1 
            profit = arr[s]-arr[b]
            key = [b, s]
            result[key] = profit
        end
    end
    result.max_by { |k, v| v }[0]

end

prices = [17,3,6,9,15,8,6,1,10]

stock_picker(prices)