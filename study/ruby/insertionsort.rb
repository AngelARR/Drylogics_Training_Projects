def insertionsort(arr)
  for i in 0...arr.length do
    for j in (i + 1)...arr.length do
      if arr[i] > arr[j]
        arr[i], arr[j] = arr[j], arr[i]
      end
    end
  end
  arr
end


arr = [5, 2, 1, 4, 3]
p insertionsort(arr)
