def search_array(arr, num)
    counter = 0
    
    arr.length.times do |value|
        if arr[value] == num
            return counter
        else
            counter += 1
        end
    end
end

test_array = [42, 89, 23, 1]
puts search_array(test_array, 1)
