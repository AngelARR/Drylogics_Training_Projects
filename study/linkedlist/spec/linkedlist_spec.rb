require "byebug"


describe 'Linkedli' do
  subject(:li) {
      l = LinkedList.new
      l.insert('cat')
      l.insert('mat')
      l.insert('rat')
      l
    }
  # let!(:li) { Linkedli.new}

  it 'should give length' do
    expect(li.length).to eq 3
  end

  context 'insert' do
    
    it 'should allow insertion at the begining' do
      initial_length = li.length
      li.insert('dog', 0)
      expect(li.length).to eq(initial_length + 1)
      expect(li.index('dog')).to eq(3)
    end
    it 'should allow insertion in between' do
      initial_length = li.length
      li.insert('rat', 3)
      expect(li.length).to eq(initial_length + 1)
    end
    it 'should allow insertion at the end' do
      initial_length = li.length
      li.insert('rat', initial_length - 1)
      expect(li.length).to eq(initial_length + 1)
    end
  end
  
  it 'should delete the node in the position' do
    initial_length = li.length
    li.delete(1)
    expect(li.length).to eq(initial_length - 1)
  end

  it 'should raise error when the position is beyond the created nodes' do
    expect{ li.delete(4)}.to raise_error("given length is wrong")
  end

  it 'should return the index of the given element' do
    expect(li.index('mat')).to eq(1)
  end

  it 'should return the element at the given position' do
    expect(li.find(2)).to eq('rat')
  end

  it 'should update the previous value' do
    expect(li.update(2, 'dog')).to eq('dog') 
  end
end
