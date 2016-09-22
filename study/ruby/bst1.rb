n = 1245


def bst(n)
  a = [20, 21, 45, 78, 200, 1002, 1232, 1245, 8000, 23999, 123456]
  low_index = 0
  high_index = a.length
  begin
    middle = ( high_index - low_index ) / 2
    if a[middle] < 1245
      low_index = low_index + middle
    else
      high_index = middle
    end
  end until a[middle] == 1245
end


p bst(n)
