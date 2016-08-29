class Array
  def search(n)
    low_index = 0
    high_index = self.length
    begin
      middle = ( high_index - low_index ) / 2
      if self[middle] < n
         low_index = low_index + middle
      else
         high_index = middle
      end
    end until self[middle] == 0
  end
end

a = [20, 21, 45, 78, 200, 1002, 1232, 1245, 8000, 23999, 123456]
a.search(1245)


