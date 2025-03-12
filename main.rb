# frozen_string_literal: true

def stock_picker(array)
  days = {
    buy_day: array.index(array.min),
    buy_cost: array.min,
    sell_day: array.index(array.max),
    sell_cost: array.max
  }

  puts "Buy day: #{days[:buy_day]}, Buy price: $#{days[:buy_cost]}"
  if days[:buy_day] < days[:sell_day]
    puts "Sell day: #{days[:sell_day]}, Sell price: $#{days[:sell_cost]}"

  else
    puts 'No sell day this month'
  end
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
