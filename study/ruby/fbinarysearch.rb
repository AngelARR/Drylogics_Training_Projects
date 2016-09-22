def binary_search(c, low = 1, high = nil, &block)
  if high == nil
    high = c / 2
  end
  if c < block.call(low) or c > block.call(high)
    return -1
  end
  middle = low + (high - low) / 2
  case c <=> block.call(middle)
  when -1    
    binary_search(c, low , middle - 1, &block)
  when 1
    binary_search(c, middle + 1, high, &block)
  when 0
    middle
  end
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