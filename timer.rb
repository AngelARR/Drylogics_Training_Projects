def timer
 start_time = Time.now.to_f
 yield
 end_time = Time.now.to_f
 time_taken = (end_time - start_time) * 1000
 puts "Time taken = #{time_taken}"
end