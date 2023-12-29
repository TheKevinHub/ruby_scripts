def bubble_sort(array)
    p array
    puts "\n"

    while array != array.sort
        array.each_with_index do |val, i|
            lowest = array[i..].min
            if array[i] != nil && array[i+1] != nil
                if array[i] > array[i+1]
                    puts "#{array[i]} is bigger than #{array[i+1]}"
                    array[i], array[i+1] = array[i+1], array[i]
                end
            end
        end
    end

    puts "\n"
    p "Assorted array is #{array.join(", ")}"
end

bubble_sort([4,3,78,2,0,2])

# Why not just use the #sort method?