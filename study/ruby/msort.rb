# def mergeSort(arr)
#   p "Splitting #{arr}"
#   if arr.length > 1
#     mid = arr.length / 2
#     lefthalf = arr[:mid]
#     righthalf = arr[mid:]

#     mergeSort(lefthalf)
#     mergeSort(righthalf)

#     i=0
#     j=0
#     k=0
#     while i < lefthalf.length and j < righthalf.length
#       if lefthalf[i] < righthalf[j]
#         arr[k] = lefthalf[i]
#         i += 1
#       else
#         arr[k] = righthalf[j]
#         j += 1
#       end
#       k += 1
#     end
#     while i < lefthalf.length
#       arr[k]=lefthalf[i]
#       i += 1
#       k += 1
#     end
#     while j < righthalf.length
#       arr[k]=righthalf[j]
#       j += 1
#       k += 1
#     end
#   p "Merging #{arr}"
# end

# arr = [54,26,93,17,77,31,44,55,20]
# p mergeSort(arr)


arr = [54,26,93,17,77,31,44,55,20]
puts arr.split_please(3)