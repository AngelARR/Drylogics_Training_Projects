def concat(number)
  return "1" if number == 1
  concat(number - 1) + number.to_s
end

def concat(number)
  result = ""
  while(number > 0) do
    result = number.to_s + result 
    number -= 1
  end
  result
end


def concat(number)
  stack = []
  while(number > 0) do
    state = {n: number, ret: number.to_s}
    stack.push(state)
    number -= 1
  end

  result = ""
  while(stack.length > 0)
    result = stack.pop[:ret] + result
  end
  result
end
concat(10)