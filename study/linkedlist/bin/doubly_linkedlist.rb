# require "byebug"

class Node
  def initialize(value=nil) @value = value; end
  def next
    @next
  end
  def prev
    @prev
  end
  def next=(node) @next = node; end
  def prev=(node) @prev = node; end
  def value() @value; end
end

class DoublyLinkedList

  def initialize
    @head = Node.new
    @length = 0
    @tail = Node.new
  end

  def length
    @length
  end

  def head() @head; end
  def tail() @tail; end

  def insert(element, position = nil)
    new_element = Node.new(element)
    current = head
    end_node = tail
    while (current.next != nil and current.next != tail)
      current = current.next
    end
    current.next = new_element
    a = current.next
    end_node.prev = a
    a.prev = current
    a.next = tail
    @length += 1
  end

  def find_head(position)
    current = head
    count = -1
    while count != position
      current = current.next
      count += 1
    end
    current.value
  end

  def find_tail(position)
    current = tail
    count = -1
    while count != position
      current = current.prev
      count += 1
    end
    current.value
  end

  def index_head(element)
    current = head
    count = -1
    while(current.value != element)
      current = current.next
      count += 1
    end
    count 
  end

  def index_tail(element)
    current = tail
    count = -1
    while(current.value != element)
      current = current.prev
      count += 1
    end
    count 
  end

  def update_head(position, element)
    current = head
    count = 0
    while count != position
      current = current.next
      count += 1
    end
    current.next = element
  end

  def update_tail(position, element)
    current = tail
    count = 0
    while count != position
      current = current.prev
      count += 1
    end
    current.prev = element
  end

  def delete(position)
    current = head
    count = -1
    if position < 0
      position = @length - position + 1
    end
    while current != nil
      if count == position
        next_a = current.next
        prev_b = current.prev
        current = current.next
        current.next = next_a.next
        current.prev = prev_b
        prev_b.next = current
        @length = @length - 1
      end
      current = current.next
      count += 1
    end
  end

end
