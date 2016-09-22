require "byebug"

class Node
  def initialize(value=nil) @value = value;  end
  def next
    @next
  end
  def next=(node) @next = node;  end
  def value() @value; end
end

class LinkedList

  def initialize
    @head = Node.new
    @length = 0
  end

  def length
    @length
  end

  def head() @head; end

  def insert(element, position = nil)
    new_element = Node.new(element)
    current = @head
    while (current.next != nil)
      current = current.next
    end
    current.next = new_element
    @length += 1
  end

  def delete(position)
    current = @head
    i = 0
    given_length = false
    if position < 0
      position = @length - position + 1
    end
    while current != nil
      if i == position
        a = current.next
        current.next = a.next
        given_length = true
        @length = @length - 1
      end
      current = current.next
      i += 1
    end
    raise 'given length is wrong' if given_length == false
  end

  def index(element)
    current = @head
    count = -1
    while(current.value != element)
      current = current.next
      count += 1
    end
    count 
  end

  def find(position)
    current = @head
    count = -1
    a = loop(count, position, current)
    a.value 
  end

  def update(position, element)
    current = @head
    count = 0
    a = loop(count, position, current)
    a.next = element
  end
  def loop(count, position, current)
    while count != position
      current = current.next
      count += 1
    end
    return current
  end
end