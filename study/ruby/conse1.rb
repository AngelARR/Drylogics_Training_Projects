n = 4002000

def consecutive_factors(n)
  factor = 0
  half = (n / 2) - 1
  half.times do |i|
    v = i + 1
    u = i + 2
    factor = v * u
    if factor == n
      p "the consecutive factors of #{n} are #{v}, #{u}"
    # else
    #   return nil
    end
  end
end



p consecutive_factors(n)
