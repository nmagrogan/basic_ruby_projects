def bubble_sort(arr)
  for i in 0..arr.length - 1
    for j in 0..arr.length-i-2
      if arr[j] > arr[j + 1]
        temp = arr[j + 1]
        arr[j + 1] = arr[j]
        arr[j] = temp
      end

    end
  end
  arr
end

p bubble_sort([4,3,78,2,0,2])
