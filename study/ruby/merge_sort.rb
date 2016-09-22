# def msort(arr)
#   l = arr.length
#   if l == 1
#     return arr
#   end
#   left = Array.new(l / 2)
#   right = Array.new((l / 2) + 1)
#   j = 0
#   for i in 0...(l / 2)
#     left[i] = arr[i]
#   end
#   for i in ((l / 2) + 1)...l
#     right[j] = arr[i]
#     j += 1
#   end
#   left = msort(left)
#   right = msort(right)
#   return merge(left, right)
# end

# def merge(left, right)
#   c = Array.new
#   while(left.length > 0 and right.lenght > 0)
#     if left[0] > right[0]
#       c.push(*right[0])
#       right.delete_at(right[0])
#     else
#       c.push(*left[0])
#       left.delete_at(left[0])
#     end
#   end
#   while(left.length > 0)
#     c.push(*left[0])
#     left.delete_at(left[0])
#   end
#   while(right.length > 0)
#     c.push(*right[0])
#     right.delete_at(right[0])
#   end
#   return c
# end



# arr = [2, 3, 1]
# p msort(arr)


arr = [54,26,93,17,77,31,44,55,20]
puts arr.each_slice(1).to_a