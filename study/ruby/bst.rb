# a = [20, 21, 45, 78, 200, 1002, 1232, 1245, 8000, 23999, 123456]
# find 1245
# low_index = 0
# high_index = a.length
# middle = (high_index - low_index)/2
# a[low_index + middle]

n = 1245


def bst(n)
  a = [20, 21, 45, 78, 200, 1002, 1232, 1245, 8000, 23999, 123456]
  low_index = 0
  high_index = a.length
  middle = 0
  until a[middle] == n
    middle = ( high_index - low_index ) / 2
    if a[middle] < n
      low_index = low_index + middle
    else
      high_index = middle
    end
  end
end


p bst(n)







# def timer
#  start_time = Time.now.to_f
#  yield
#  end_time = Time.now.to_f
#  time_taken = (end_time - start_time) * 1000
#  puts "Time taken = #{time_taken}"
# end

# timer {
#  p consecutive_factors(n)
# }