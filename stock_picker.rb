

def stock_picker(stocks)
  days = [0,stocks.length-1]
  stocks.each_with_index do |stock, index|
    if stock < stocks[days[0]] && index < days[1]
      days[0] = index
    elsif stock >  stocks[days[1]] && index > days[0]
      days[1] = index
    end
  end
  days
end

p stock_picker([17,3,6,9,15,8,6,1,10])

p stock_picker([1,5,8,2,5,9,10])

p stock_picker([15,6,9,3,1])
