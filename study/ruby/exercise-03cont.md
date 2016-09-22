students = ['Johnny', 'Alice', 'Bob', 'Humpty', 'Peter', 'Jack']
mark_list = [[50, 80, 60], [90, 70, 70], [70, 70, 90], [80, 80, 30], [60, 70, 100], [50, 60, 90]]
subjects = ['physics', 'chemistry', 'geography']

subject_ids = subjects.map(&:to_sym)
Hash[students.zip(mark_list.map {|marks| Hash[subject_ids.zip(marks)]})]

{  
   "Johnny":{  
      "physics":50,
      "chemistry":80,
      "geography":60
   },
   "Alice":{  
      "physics":90,
      "chemistry":70,
      "geography":70
   },
   "Bob":{  
      "physics":70,
      "chemistry":70,
      "geography":90
   },
   "Humpty":{  
      "physics":80,
      "chemistry":80,
      "geography":30
   },
   "Peter":{  
      "physics":60,
      "chemistry":70,
      "geography":100
   },
   "Jack":{  
      "physics":50,
      "chemistry":60,
      "geography":90
   }
}


sample = Hash.new
%w(sarav saro saran saravana sravan).each_with_index { |k,v|  sample[k] = v } sample
