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
puts search_array(test_array, 23)
puts search_array(test_array, 2)


def fib(num)
    fib_sequence = []
    counter = 0
    old_num = 0
    current_num = 1
    while counter < num
        counter += 1
        if current_num <= 2
            fib_sequence << old_num
            placeholder = current_num
            current_num += old_num
            old_num = placeholder
            puts "IF STATEMENT old_num: #{old_num}"
            puts "IF STATEMENT current_num: #{current_num}"
        else
            fib_sequence << old_num
            placeholder = current_num
            current_num += old_num
            old_num = placeholder
            puts "ELSE STATEMENT old_num: #{old_num}"
            puts "ELSE STATEMENT current_num: #{current_num}"
        end
    end
    fib_sequence
end

puts fib(100)
