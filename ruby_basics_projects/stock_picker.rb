def stock_picker(array)
    low_index = 0
    high_index = 0
    profit = 0
    for i in 0...array.length
        for j in (i+1)...array.length
            if array[i] - array[j] < profit
                profit = array[i] - array[j]
                low_index = i
                high_index = j
            end
        end
    end
    best_invest_days = [low_index, high_index]
    return best_invest_days
end
p stock_picker([17,3,6,9,15,8,6,1,10])