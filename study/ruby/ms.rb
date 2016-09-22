
def mergesort(arr, tempArr = nil, low = 0, high = nil)
  if high == nil
    high = arr.length - 1 
    tempArr = arr.clone
  end
  return arr if (high - low + 1) < 2
  mid = low + (high - low) / 2
  mergesort(arr, tempArr, low, mid)
  mergesort(arr, tempArr, mid + 1, high)
  if (Math.log(high - low + 1, 2).to_i % 2 == 0)
    merge(tempArr, arr, low, high)
    return arr
  else
    merge(arr, tempArr, low, high)
    return tempArr
  end
end

def merge(arr, tempArr, low = 0, high = nil)
  high = arr.length - 1 if high == nil
  mid = low + (high - low) / 2
  i = low
  first_index = low
  second_index = mid + 1
  while (first_index <= mid and second_index <= high)
    case arr[first_index] <=> arr[second_index]
    when -1
      tempArr[i] = arr[first_index]
      first_index += 1
    when 0
      tempArr[i] = arr[first_index]
      tempArr[i + 1] = arr[second_index]
      first_index += 1
      second_index += 1
      i += 1
    when 1
      tempArr[i] = arr[second_index]
      second_index += 1
    end
    i += 1
  end
  while (first_index <= mid)
    tempArr[i] = arr[first_index]
    first_index += 1
    i += 1
  end
  while (second_index <= high)
    tempArr[i] = arr[second_index]
    second_index += 1
    i += 1
  end
  tempArr
end



# arr = [3, 10, 2, 4, 6, 1]
# arr = [3, 10, 2, 4, 1]

multi = []
multi << [84, 8, 46, 655, 54, 56, 234, 664]
multi << [3, 10, 2, 4, 1]
multi << [3, 10, 2, 4, 6, 1]
multi << [84, 8, 46, 655, 54, 56, 234, 664, 6]
multi << [84, 8, 46, 655, 54, 56, 234]
multi.each do |arr|
  p mergesort(arr)
end

# arr = [3, 4, 6, 10, 1, 2, 5]
# tempArr = arr.clone
# p merge(arr, tempArr)