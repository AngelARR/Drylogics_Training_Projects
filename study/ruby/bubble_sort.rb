# require "byebug"

def bubble(arr)
  i = 1
  until i == 0
    head = 0
    swap_count = 0
    if arr[head] > arr[head + 1]
      swap_count += 1
      arr[head], arr[head + 1] = arr[head + 1], arr[head]
      head += 1
    else
      head += 1
    end
    i = swap_count
  end
  arr
end

arr = [6, 2, 4, 1, 5, 3]
p bubble(arr)