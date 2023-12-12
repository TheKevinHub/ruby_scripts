def stock_picker(array)
    result = []
    array.each_with_index do |buy_val, i|
        highest_val = array[i..].max
        highest_idx = array[i..].each_with_index.max[1] + i
        result << [highest_val - buy_val, i, highest_idx]
    end
    p best = result.max_by(&:first)
    puts "Best profits would be $#{best[0]} if you buy on day #{best[1]} and sell on day #{best[2]}."
end

stock_picker([17,3,6,9,15,8,6,1,10])