def binary_search(c, low = 1, high = c)
  result = 0
  while(yield(low) < 1 or yield(high) > 1)
    if c < yield(low) or c > yield(high)
      return -1
    end  
    middle = low + (high - low) / 2
    case c <=> yield(middle)
    when -1
      high = middle - 1
    when 0
      result = middle
      break
    when 1
      low = middle + 1
    end
  end
  result
end

# def timer
#  start_time = Time.now.to_f
#  yield
#  end_time = Time.now.to_f
#  time_taken = (end_time - start_time) * 1000
#  puts "Time taken = #{time_taken}"
# end

# timer{
  [5, 6, 30].each { |c|
    p binary_search(c){ |x|
      x * (x + 1)
    }
    p binary_search(c){ |x|
      x * (x - 1)
    }
  }
# }
