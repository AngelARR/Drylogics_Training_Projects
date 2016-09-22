# n = 32400180000
# n = 30

# n = 2000 * 2001
# n = 10 * 11

values = [5*6, 10 * 11, 20 * 21, 100 * 101, 203 * 204]



def smallest_factor(n)
  half = n / 2
  i = 2
  while i < half
    return i if(n % i == 0)
    i += 1
  end
  return 1
end

def factors(n)
  factors = []
  sm_factors = []
  sf = smallest_factor(n)
  quotient = n / sf
  factors << sf
  while(sf > 1)
    sf = smallest_factor(quotient)
    factors << sf
    quotient = quotient / sf
  end
  factors << quotient
  factors
end

def find_solution(n)
  start = Time.now.to_f
  fcs = factors(n)
  all_factors = fcs.clone
  fcs.length.times { |i|
    fcs.permutation(i).each { |array|
      factor = array.reduce(1){|prev, v| prev * v }
      all_factors << factor unless all_factors.include? factor
    }
  }
  end_t = Time.now.to_f
  (end_t - start) * 1000
end


puts values.collect { |n| find_solution(n) }

