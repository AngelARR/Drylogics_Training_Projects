students = ['Johnny', 'Alice', 'Bob', 'Humpty', 'Peter', 'Jack']
mark_list = [[50, 80, 60], [90, 70, 70], [70, 70, 90], [80, 80, 30], [60, 70, 100], [50, 60, 90]]
teachers = ['Rekha', 'Salman', 'Amir', 'Amutha']
subjects = ['physics', 'chemistry', 'geography']
marks = []

Ennumerable

all?

[1, 2, 3, 4].all?  => true
[1, 2, 3, 4, nil].all? => false
[1, 2, 3, 4, false].all? => false
[true, true, true, true, false].all? => false

[false, false, false, true].any? => false

[false, false, false, false].any?

living_things = %w(cat rat)
class Fixnum
  def distinction?
    self > 79
  end
end


class String
  @@living_things = %w(cat rat)
  def living_thing?
    all_living_things.include? self
  end
  private
  def all_living_things
    @@living_things
  end
end


exibit_a = "goat"
exibit_a.living_thing?

class String
  @@living_things = %w(cat rat goat)
  def living_thing?
    all_living_things.include? self
  end
  private
  def all_living_things
    @@living_things
  end
end




%w(cat mat rat).all? {|type| living_things.include? type}

%w(cat mat rat).any? {|type| type.living_thing? }
%w(cat mat rat).any?(&:living_thing?)



[80, 79, 90, 100].all?(&:distinction?)


#all?   

Passes each element of the collection to the given block.    The
method returns true if the block never returns false or nil.    If the block
is not given, Ruby adds an implicit block of    {|obj| obj} (that is all? will
return true only if none of the collection members are false or nil.) 

#any?

Passes each element of the collection to the given block.    The method
returns true if the block ever returns a value other than false or nil. If the
block is not given, Ruby adds an implicit block of    {|obj| obj} (that is
any? will return true if at least one of the collection members is not false
or nil. 

#chunk 

Creates an enumerator for each chunked elements. The consecutive elements
which have same block value are chunked.

#chunk_while

Creates an enumerator for each chunked elements. The consecutive elements
which have same block value are chunked.

#collect

Returns a new array with the results of running block once for every element
in enum.

#collect_concat 

Returns a new array with the concatenated results of running block once for
every element in enum.

#count 

Returns the number of items in enum, where #size is called if it responds to
it, otherwise the items are counted through enumeration. If an argument is
given, counts the number of items in enum, for which equals to item. If a
block is given, counts the number of elements yielding a true value.

#cycle 

Calls block for each element of enum repeatedly n times or forever if none or
nil is given. If a non-positive number is given or the collection is empty,
does nothing. Returns nil if the loop has finished without getting
interrupted.

#detect

Passes each entry in enum to block. Returns the first for which block is not
false. If no object matches, calls ifnone and returns its result when it is
specified, or returns nil otherwise.

#drop 

Drops first n elements from enum, and returns rest elements in an array.

#drop_while 

Drops elements up to, but not including, the first element for which the block
returns nil or false and returns an array containing the remaining elements.

#each_cons 

Iterates the given block for each array of consecutive <n> elements. If no
block is given, returns an enumerator.

#each_entry 

Calls block once for each element in self, passing that element as a
parameter, converting multiple values from yield to an array.

#each_slice 

Iterates the given block for each slice of <n> elements. If no block is given,
returns an enumerator.

#each_with_index

Calls block with two arguments, the item and its index, for each item in enum.
Given arguments are passed through to #each().

#each_with_object 

Iterates the given block for each element with an arbitrary object given, and
returns the initially given object.

#entries 

Returns an array containing the items in enum.

#find 

Passes each entry in enum to block. Returns the first for which block is not
false. If no object matches, calls ifnone and returns its result when it is
specified, or returns nil otherwise.

#find_all 

Returns an array containing all elements of enum for which block is not false
(see also Enumerable#reject).

#find_index 

Compares each entry in enum with value or passes to block. Returns the index
for the first for which the evaluated value is non-false. If no object
matches, returns nil

#first 

Returns the first element, or the first n elements, of the enumerable. If the
enumerable is empty, the first form returns nil, and the second form returns
an empty array.

#flat_map 

Returns a new array with the concatenated results of running block once for
every element in enum.

#grep

Returns an array of every element in enum for which Pattern === element. If
the optional block is supplied, each matching element is passed to it, and the
block’s result is stored in the output array.

#grep_v 



#group_by 

Returns a hash, which keys are evaluated result from the block, and values are
arrays of elements in enum corresponding to the key.

#include? 

Returns true if any member of enum equals obj. Equality is tested using ==.

#inject 

Combines all elements of enum by applying a binary operation, specified by a
block or a symbol that names a method or operator.

#lazy 

Returns a lazy enumerator, whose methods map/collect, flat_map/collect_concat,
select/find_all, reject, grep, zip, take, #take_while, drop, and #drop_while
enumerate values only on an as-needed basis. However, if a block is given to
zip, values are enumerated immediately.

#map 

Returns a new array with the results of running block once for every element
in enum.

#max 

Returns the object in enum with the maximum value. The first form assumes all
objects implement Comparable; the second uses the block to return a <=> b.

#max_by 

Returns the object in enum that gives the maximum value from the given block.

#member? 

Returns true if any member of enum equals obj. Equality is tested using ==.

#min

Returns the object in enum with the minimum value. The first form assumes all
objects implement Comparable; the second uses the block to return a <=> b.

#min_by

Returns the object in enum that gives the minimum value from the given block.

#minmax

Returns two elements array which contains the minimum and the maximum value in
the enumerable. The first form assumes all objects implement Comparable; the
second uses the block to return a <=> b.

#minmax_by 

Returns two elements array array containing the objects in enum that gives the
minimum and maximum values respectively from the given block.

#none? 

Passes each element of the collection to the given block. The method returns
true if the block never returns true for all elements. If the block is not
given, none? will return true only if none of the collection members is true.

#one? 

Passes each element of the collection to the given block. The method returns
true if the block returns true exactly once. If the block is not given, one?
will return true only if exactly one of the collection members is true.

#partition 

Returns two arrays, the first containing the elements of enum for which the
block evaluates to true, the second containing the rest.

#reduce 

Combines all elements of enum by applying a binary operation, specified by a
block or a symbol that names a method or operator.

#reject

Returns an array for all elements of enum for which block is false (see also
Enumerable#find_all).

#reverse_each 

Builds a temporary array and traverses that array in reverse order.

#select 

Returns an array containing all elements of enum for which block is not false
(see also Enumerable#reject).

#slice_after 

Creates an enumerator for each chunked elements. The ends of chunks are
defined by pattern and the block.

#slice_before 

Creates an enumerator for each chunked elements. The beginnings of chunks are
defined by pattern and the block.

#slice_when 

Creates an enumerator for each chunked elements. The beginnings of chunks are
defined by the block.

#sort 

Returns an array containing the items in enum sorted, either according to
their own <=> method, or by using the results of the supplied block. The block
should return -1, 0, or +1 depending on the comparison between a and b. As of
Ruby 1.8, the method Enumerable#sort_by implements a built-in Schwartzian
Transform, useful when key computation or comparison is expensive.

#sort_by

Sorts enum using a set of keys generated by mapping the values in enum through
the given block.

#take 

Returns first n elements from enum.

#take_while 

Passes elements to the block until the block returns nil or false, then stops
iterating and returns an array of all prior elements.

#to_a 

Returns an array containing the items in enum.

#to_h 

Returns the result of interpreting enum as a list of [key, value] pairs.

#zip 

Takes one element from enum and merges corresponding elements from each args.
This generates a sequence of n-element arrays, where n is one more than the
count of arguments. The length of the resulting sequence will be enum#size. If
the size of any argument is less than enum#size, nil values are supplied. If a
block is given, it is invoked for each output array, otherwise an array of
arrays is returned.




Hash[['physics', 'chemistry',
'biology'].zip([80, 97, 86])] Hash[['physics', 'chemistry',
'biology'].map(&:to_sym).zip([80, 97, 86])]