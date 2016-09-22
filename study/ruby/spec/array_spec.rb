
class Array
  def search1(n)
    low = 0
    high = self.length - 1
    middle = low + (high - low) / 2
    if self[middle] == n
      return middle 
    elsif self[middle] > n
      high = middle
      middle = (high - low) / 2
      return middle if self[middle] == n
    else
      low = middle 
      middle = low + (high - low) / 2
      return middle if self[middle] == n
      if self[middle] < n 
        low = middle 
        middle = low + (high - low) / 2
        return middle if self[middle] == n
      end
    end
    -1
  end

  def search(n, low = 0, high = self.length - 1)
    return -1 if self[high] < n or self[low] > n
    middle =  low + (high - low) / 2
    case(n <=> self[middle])
      when 1
        self.search(n, middle + 1, high)
      when 0
        return middle
      when -1
        self.search(n, low, middle - 1)
    end
  end
end



$array = [20, 21, 45, 78, 200, 1002, 1232, 1245, 8000, 23999, 123456]
describe 'Array' do
  context :search do
    subject(:array) { $array }

    $array.each_with_index { |value, index|
      it "should find index of #{value}" do
        expect(array.search(value)).to eq(index)
      end
    }


    it 'should give -1 if value not present' do
      expect(array.search(1000)).to eq(-1)
    end
  end

end






