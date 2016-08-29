class Marks
  include Enumerable

  def initialize(physics, chemistry, maths)
    @physics = physics
    @chemistry = chemistry
    @maths = maths
  end

  def each 
    yield ['physics', @physics]
    yield ['chemistry', @chemistry]
    yield ['maths', @maths]
  end
end

Rate Limits

def fetch_from_database(ids)
  
end


%w(cat mat rat hat bat sat pat fat).each_with_index { |v, ind|
  p "#{v} - #{ind}"
}; nil

def all_animals(list)
  animals = %w(cat rat goat lion)
  list.reduce([]) { |animals_only, item|  
    animals_only << item if animals.include?(item)
    animals_only
  }
end

def all_animals(list)
  animals = %w(cat rat goat lion)
  list.each_with_object([]) { |item, animals_only|  
    animals_only << item if animals.include?(item)
  }
end

def all_animals(list)
  animals = %w(cat rat goat lion)
  list.select {|item| animals.include? item}
end

a = [3, 10, 2003, 2, 5]

marks = [
  ['math', 'phy', 'chem'],
  [100, 90, 80],
  [100, 70, 100],
  [100, 90, 90],
]

headers = marks[0].map(&:to_sym)
marks.collect{|row| Hash[headers.zip(row)] }







all_animals(%w(cat mat rat hat bat sat pat fat goat))

[cat rat goat]



Programming

def sample
  male = %w(john peter dev mike siddhu sravan)
  male  
end

def sample
  male = [["ram", "siva"],["lakshman", "raghav"], ["anand", "bhadran"]]
  male  
end

sample.all? { |we| we.length <= 6 }
sample.any? { |we| we.length <= 6 }
sample.chunk { |we| we.length <= 6 }.each { | item, value | p [ item, value ]}

def ex
  sample.chunk { |we| we.length <= 3 }.each { | item, value | 
  if item == true
    p "pass #{value}" 
  else 
    p "fail #{value}"
  end
  }
end

sample.collect { | i | p i }
sample.collect_concat { | i | i }
sample.count
sample.cycle(2) { | x | p x }
(100..200).detect { | i | i % 20 != 0 and i % 10 == 0}
(1..10).drop(5)
(1..10).drop_while { |i| i % 2 == 0 }
(0..10).each_cons(3) { |i| p i }
(0..10).each_slice(5) { |i| p i }
(100..200).find { | i | i % 20 != 0 and i % 10 == 0}
(100..200).find_all { | i | i % 20 != 0 and i % 10 == 0}
sample.first
sample.flat_map { | i | i }