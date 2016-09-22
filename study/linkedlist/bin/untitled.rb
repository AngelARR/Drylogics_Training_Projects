  def insert(element, position = nil)
    new_element = Node.new(element)
    current = head
    if position == nil
      while (current.next != tail)
        current = current.next
      end
      current.next = new_element
      a = current.next
      tail.prev = a
      a.prev = current
      a.next = tail
    else
      while current != nil
        if count == position
          a = current
          b = current.prev
          current = new_element
          current.prev = b
          current.next = a
          a.prev = current
          b.next = current
        end
        current = current.next
        count += 1
      end
    end 
    @length += 1
  end

  def insert(element, position = nil)
    new_element = Node.new(element)
    current = head
    count = -1
    if position == nil
      position = @length + 1
    end
    while current != nil
      if count == position
        a = current
        b = current.prev
        current = new_element
        current.prev = b
        current.next = a
        a.prev = current
        b.next = current
        @length = @length + 1
      end
      current = current.next
      count += 1
    end
  end
