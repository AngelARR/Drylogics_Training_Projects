Print sum of n numbers

def sum(n)
  result = 0
  (n+1).times do |i|
    result += i
  end
  result
end

n = 3
puts "Sum of #{n} is #{sum(n)}"


Product of n numbers (factorial)

def factorial(n)
  product = 1
  counter = 1
  until counter > n
    product *= counter
    counter += 1
  end
  product
end

n = 5
product = 5 * 4 * 3 * 2 * 1
120 * 6

def factorial(n)
  product = 1
  n.times do |i|
    product *= (i+1)
  end
  product
end

def factorial(n)
  (1..n).reduce(1) {|p, i| p * i}
end

(1..n).reduce(1) {|p, i| p * i}

n = 3
puts "Factorial of #{n} is #{factorial(n)}"


Permutation n, r

def permutation(n,r)
  product1 = 1
  product2 = 1
  n.times do |i|
    product1 *= (i+1)
  end
  (n-r).times do |i|
    product2 *= (i+1)
  end
  permute = product1/product2
end

n=10
r=5
puts "Permutation of #{n}, #{r} is #{permutation(n,r)}"


def permutation(n,r)
  product = 1
  (n-r).times do |i|
    product *= (i+1)
  end
  permute = factorial(n)/product
end



Combination of n, r

def combination(n,r)
  combine = permutation(n,r)/factorial(r)
end

n=10
r=5
puts "Combination of #{n}, #{r} is #{combination(n,r)}"


Fibonacci Series

def fibonacci(n)
  first = 0
  second = 1
  print " #{first} #{second}"
  n.times do |i|
    sum = first + second
    first = second
    second = sum
    print " #{sum} "
  end
end

fibonacci(n)


Palindrome Check

def palindrome?()
  input = "malayalam"
  x = 0
  y = (input.length)-1
  while x <= y
    if input[x]!=input[y]
      return false
    end
    return true
  end
end


Power of x to y

def power(x,y)
  exponential = 1
  (y).times do |i|
    exponential *= x
  end
  exponential
end

x=5
y=5
power(x,y)


