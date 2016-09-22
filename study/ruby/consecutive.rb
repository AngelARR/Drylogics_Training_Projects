# n = 95
# n = 4002000
# n = 32400180000
n = 123725874562748213426040552
# n = 6


def consecutive_factors(n)
  # start = Time.now.to_f
  factor = 0
  half = n / 2
  half.times do |i|
    # p "processing #{i}" if i % 10000 == 0
    v = i + 1
    u = i + 2
    factor = v * u
    while factor == n
      return v,u          
    end
  end
  # end_t = Time.now.to_f
  # (end_t - start) * 1000
end


def timer
 start_time = Time.now.to_f
 yield
 end_time = Time.now.to_f
 time_taken = (end_time - start_time) * 1000
 puts "Time taken = #{time_taken}"
end

timer {
 p consecutive_factors(n)
}


# 11123213320024