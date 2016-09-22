def search(c, low, high)
  return -1 if (high - 1) * high < c or (low - 1) * low > c

  middle =  low + (high - low) / 2
  case(c <=>  (middle - 1) * middle)
    when 1
      search(c, middle + 1, high)
    when 0
      return middle
    when -1
      search(c, low, middle - 1)
  end
end


def search(c, low, high, &block)
  return -1 if block.call(high) < c or block.call(low) > c
  middle =  low + (high - low) / 2
  case(c <=>  block.call(middle))
    when 1
      search(c, middle + 1, high, &block)
    when 0
      return middle
    when -1
      search(c, low, middle - 1, &block)
  end
end

[6, 123725874562748213426040552].each { |c|
  half = c / 2
  p search(c, 1, half) { |x|
    (x - 1) * x
  }
}