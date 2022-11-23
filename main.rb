def stock_picker(arr)
copy_of_arr = arr.clone





new = []

  for i in 0..arr.count-2 do
    b = arr.shift() #get first element of array
    sub_arr = []
    for x in arr do
      sub_arr.push(b-x) #subtract each other element with it
    end
    new.push(sub_arr) #push results into new array
  end

lowest_arrays = new.map{|a| a.min} # get lowest values of nested arrays

buy_value = lowest_arrays.each_with_index.min

buy_index = buy_value[1]


sell_value = copy_of_arr[buy_index] + buy_value[0].abs

sell_index = copy_of_arr.index(sell_value)

p [buy_index,sell_index]

end



stock_picker([17,6,9,8,6,1,10])
