def mergeSort(arr)
  if arr.length < 2
    return arr
  end
  left = mergeSort(arr[0...(arr.length / 2)])
  right = mergeSort(arr[(arr.length / 2)...arr.length])
  merge(left, right)
end

def merge(left, right)
  if left.length == 0
    right
  elsif right.length == 0
    left
  elsif left[0] < right[0]
    [left[0]] + merge(left[1...left.length], right)
  else
    [right[0]] + merge(left, right[1...right.length])
  end
end

      
arr = [6, 2, 9, 5, 1, 8, 5]
p mergeSort(arr)