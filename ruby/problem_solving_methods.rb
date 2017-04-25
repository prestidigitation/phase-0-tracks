def search_array(arr, num)
    counter = 0
    
    arr.length.times do |value|
        if value == num
            return counter
        else
            counter += 1
        end
    end
end
