def bubble_sort(list)
    unsorted_until_index = list.length - 1
    sorted = false
    while sorted == false
        sorted = true
        for i in 0...unsorted_until_index
            if list[i] > list[i + 1]
                list[i], list[i + 1] = list[i + 1], list[i]
                sorted = false
            end
        end
        unsorted_until_index -= 1
    end
    list
end
p bubble_sort([4,3,78,2,0,2])