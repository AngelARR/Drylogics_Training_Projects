def fact(n)
  if n == 0
    1
  else
    n*fact(n-1)
  end
end

[5].each { |n|
p fact(n)
}


def factorial(n)
  n > 1 ? n * factorial(n-1) : 1
end

[5].each { |n|
p factorial(n)
}
