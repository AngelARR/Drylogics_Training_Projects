def search(low, high, &block)
  return -1 if block.call(high) == 1 or block.call(low) == -1 
  # return -1 if block.call(high) < c or block.call(low) > c 
  middle =  low + (high - low) / 2
  case(block.call(middle))
    when 1
      search(middle + 1, high, &block)
    when 0
      return middle
    when -1
      search(low, middle - 1, &block)
  end
end

[6, 123725874562748213426040552].each { |c|
  half = c / 2
  p search(1, half) { |x|
    c <=> ((x - 1) * x)
  }
}