def divide(a, b, decimal_places, has_decimal_point = false)
  return '' if decimal_places == 0 or a == 0
  if(has_decimal_point)
    a *= 10
    quotient = (a / b)
    remainder = a % b
    quotient.to_s + divide(remainder, b, decimal_places - 1, true)

  else
    if a < b
      quotient = 0 
      remainder = a
    else
      quotient = (a / b)
      remainder = a % b
    end
    fraction_part = divide(remainder, b, decimal_places, true)
    quotient.to_s + "." + fraction_part.to_s
  end
end




# p divide(0, 6, 3)

# p divide(1, 6, 3)

# p divide(22, 7, 1000)

p divide(245850922, 78256779, 1000)
