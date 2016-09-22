describe 'Linkedli' do
  subject(:lin) { 
      l = DoublyLinkedList.new
      l.insert('cat')
      l.insert('mat')
      l.insert('rat')
      l
    }
  it 'should give length' do
      expect(lin.length).to eq 3
  end
  context 'insert' do

    it 'should allow insertion at the begining' do
      initial_length = lin.length
      lin.insert('dog', 0)
      expect(lin.length).to eq(initial_length + 1)
      expect(lin.index_head('dog')).to eq(3)
      expect(lin.index_tail('dog')).to eq(0)
    end
    it 'should allow insertion in between' do
      initial_length = lin.length
      lin.insert('rat', 3)
      expect(lin.length).to eq(initial_length + 1)
    end

    it 'should allow insertion at the end' do
      initial_length = lin.length
      lin.insert('rat', initial_length - 1)
      expect(lin.length).to eq(initial_length + 1)
    end

  end

  it 'should delete the node in the position' do
    initial_length = lin.length
    lin.delete(1)
    expect(lin.length).to eq(initial_length - 1)
  end

  it 'should return the element at the given position' do
    expect(lin.find_head(2)).to eq('rat')
    expect(lin.find_tail(2)).to eq('cat')
  end

  it 'should return the index of the given element' do
    expect(lin.index_head('mat')).to eq(1)
    expect(lin.index_tail('cat')).to eq(2)
  end

  it 'should update the previous value' do
    expect(lin.update_head(2, 'dog')).to eq('dog') 
    expect(lin.update_tail(2, 'dog')).to eq('dog') 
  end
end