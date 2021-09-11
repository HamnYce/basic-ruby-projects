# frozen_string_literal: true

def stock_picker(stocks) 
  greatest_difference = 0
  lowest_index = 0
  highest_index = 0
  stocks.each_with_index do |x, i|
    rest_of_stocks = stocks.values_at(i + 1..-1)
    rest_of_stocks.each_with_index do |y, j|
      if greatest_difference < (y - x)
        greatest_difference = (y - x)
        lowest_index = i and highest_index = (j + i + 1)
        puts "----\ngreat_diff:#{greatest_difference}\nlow:#{lowest_index}\nhigh:#{highest_index}\n----"
      end
    end
  end
  return [lowest_index, highest_index] unless greatest_difference <= 0

  'Looks like it\'s a bullish market'
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1,4]

