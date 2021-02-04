stock_prices = [4, 20, 3, 1, 5, 9, 15, 9, 10, 11, 6]

def stock_picker(stock_prices)
    lowest_index = 0
    lowest_price = stock_prices[0]
    highest_price = 0
    profit = 0

    days = []
    stock_prices.each.with_index do |price, index|
        if lowest_price > price
            lowest_price = price
            lowest_index = index
        end
        if price - lowest_price > profit
            profit = price - lowest_price
            highest_price = price

            days[0] = lowest_index
            days[1] = index
        end
    end

    days
end

best_days = stock_picker(stock_prices)

puts "For a profit of $#{stock_prices[best_days[1]] - stock_prices[best_days[0]]}: buy stocks on day ##{best_days[0]} and sell on day ##{best_days[1]}."