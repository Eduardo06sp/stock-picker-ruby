def stock_picker(prices)
  best_profit = 0
  best_transaction = []

  prices.each_with_index do |price, index|
    remaining_arr = prices[index + 1..prices.length - 1]

    remaining_arr.each_with_index do |next_price, remaining_index|
      profit = next_price - price

      if profit > best_profit
        best_profit = profit
        best_sell_index = (prices.length - remaining_arr.length) + remaining_index
        best_transaction = [[index], [best_sell_index]]
      end
    end
  end

  p best_transaction
end

stock_picker([3,15,10,6,9,8,6,1,10])
