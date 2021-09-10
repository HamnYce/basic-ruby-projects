# frozen_string_literal: true

def stock_picker(stocks)
  highest_cost = stocks[0]
  lowest_cost = stock[0]
  stocks.each_with_index do |stock, index|
    if highest_cost < stock
      highest_cost = stock
      highest_day = index
    elsif lowest_cost > stock
      lowest_cost = stock
      lowest_day = index
    end
  end
  [highest_day, lowest_day]
end

puts stock_picker([9, 1, 2, 3, 4, 5])