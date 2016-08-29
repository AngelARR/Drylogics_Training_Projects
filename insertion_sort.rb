def ins_sort(arr)
  for i in 0...arr.length-1 do
    for j in (i + 1)...arr.length do
      if yield(arr[i], arr[j])
        arr[i], arr[j] = arr[j], arr[i]
      end
    end
  end
  arr
end

arr = [6, 3, 5, 4, 1]
p ins_sort(arr){ |a, b|
  b > a
}
p ins_sort(arr){ |a, b|
  a > b
}
p ""

class Student
  def initialize(name, marks)
    @name = name
    @marks = marks
  end
  def name() @name; end
  def marks() @marks; end
  def to_s() "name:#{@name};marks:#{@marks}"; end
end
students = [Student.new('malathi', 78),
Student.new('Aarthi', 87),
Student.new('Jhansi', 88),
Student.new('Robin', 77),
Student.new('Freeda', 90),
Student.new('Zarfan', 87)]

p "by names:::=================="
p ""
p "ascending"
ins_sort(students) { |st1, st2|
  st1.name.downcase > st2.name.downcase
}.each {|student| p student.to_s}
p ""
p "descending"
ins_sort(students) { |st1, st2|
  st1.name.downcase < st2.name.downcase
}.each {|student| p student.to_s}

p ""
p "by marks:::=================="
p ""
p "ascending"
ins_sort(students) { |st1, st2|
  st1.marks < st2.marks
}.each {|student| p student.to_s}
p ""
p "descending"
ins_sort(students) { |st1, st2|
  st1.marks > st2.marks
}.each {|student| p student.to_s}