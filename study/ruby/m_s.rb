def merge_sort(arr)
  tempArr = arr
  return arr if arr.length < 2 
  mid = arr.length / 2
  merge_sort(arr[0...mid])
  merge_sort(arr[mid...arr.length])
  merge(tempArr, arr[0...mid], arr[mid...arr.length])
end

def merge(tempArr, arr1, arr2)
  arr = tempArr
  for i in 0...arr.length do
    for j in 0...arr.length do
      if arr1 == 0
        arr2
      elsif arr2 == 0
        arr1
      elsif arr1[i] < arr2[j]
        tempArr[i] = arr1[i]
        i += 1
      else
        tempArr[j] = arr2[j]
      end
    end
  end
  return tempArr
end


arr = [6, 2, 8, 4, 3, 9, 1]
p merge_sort(arr)