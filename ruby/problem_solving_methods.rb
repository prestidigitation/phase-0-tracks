def search_array(arr, num)
    counter = 0
    
    arr.length.times do |value|
        if arr[value] == num
            return counter
        else
            counter += 1
        end
    end
    return nil
end

test_array = [42, 89, 23, 1]
puts search_array(test_array, 2)


# def fib(num)
#     fib_sequence = [0, 1]
#     counter = 0
#     old_num = 0
#     current_num = 1
#     while counter <= num
#     counter += 1
#     if current_num == 1 && old_num == 0
#        old_num = 1
#     else
#        old_num = current_num
#        current_num += old_num
#        fib_sequence << current_num
#     end
# end
