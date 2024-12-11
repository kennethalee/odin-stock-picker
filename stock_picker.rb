def stock_picker(prices)
  min_price = Float::INFINITY
  min_index = 0
  max_profit = 0
  buy_day = 0
  sell_day = 0

  prices.each_with_index do |curr_price, curr_index|
    if curr_price < min_price
      min_price = curr_price
      min_index = curr_index
    end
    profit = curr_price - min_price

    if profit > max_profit
      max_profit = profit
      buy_day = min_index
      sell_day = curr_index   
    end
  end
  return [buy_day, sell_day]
end

stock_picker([17,3,6,9,15,8,6,1,10])