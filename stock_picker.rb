def stock_picker(stocks)
  profits = Hash.new
  stocks.each_with_index do |buy_price, buy_day|
    stocks.each_with_index do |sell_price, sell_day|
      if sell_day > buy_day
        profit = sell_price - buy_price
        days = [buy_day, sell_day]
        profits[profit] = days
      end
    end
  end
    
  profits[profits.keys.max]
end

stock_picker([17,3,6,9,15,8,6,1,10])
