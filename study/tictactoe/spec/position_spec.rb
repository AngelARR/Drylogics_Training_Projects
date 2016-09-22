describe 'Position' do

  it 'should implement equality' do
    expect(Position.new(1,2)).to eq(Position.new(1, 2))
  end

  it 'should give position id' do
    expect(Position.new(1,2).index).to eq(5)
  end
end