def pi(decimal_places, a = 22)
  return "" if decimal_places == 0
  if a == 22
    quotient = "3."
  else
    a *= 10
    decimal_places -= 1
    quotient = (a / 7).to_s
  end
  quotient + pi(decimal_places, (a % 7))
end

pi(6)