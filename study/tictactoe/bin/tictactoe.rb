require 'byebug'

class EmptyCell
  def empty?() true; end
  def token() "*"; end
end
class OccupiedCell
  def initialize(token) @token = token; end
  def empty?() false; end
  attr_reader :token
end

class TicTacToe
  @@EMPTY = EmptyCell.new


  def initialize
    @cells = [
      empty, empty, empty, 
      empty, empty, empty, 
      empty, empty, empty      
    ]
    @tokens = ['X', '0']
    @event_hash = Hash.new
    @count = [ ]
  end

  def tokens() @tokens end

  def each_cell(&block)
    @cells.each(&block)
  end

  def place!(position, token)
    raise 'Invalid token' unless tokens.include? token
    raise 'Your turn is over' if @last_played_token == token
    raise 'Token already placed.' unless @cells[position.index].empty?
    @cells[position.index] = OccupiedCell.new(token)
    @last_played_token = token

    if win? and @event_hash[:win]
      @event_hash[:win].call(token)
    end

    if @cells.count == 9
      draw?
    end
    # @event_hash[event_name].call(token)
  end

  def token_at(position)
    @cells[position.index].token
  end

  def win?
    3.times { |row_offset|
      row_index = row_offset * 3
      first_cell = @cells[row_index + 0]
      second_cell = @cells[row_index + 1]
      third_cell = @cells[row_index + 2]
      if(first_cell.kind_of?(OccupiedCell) and first_cell.token == second_cell.token and first_cell.token == third_cell.token)
        return true
      end
    }

    3.times { |column_offset|
      column_index = column_offset % 3
      first_cell = @cells[column_index]
      second_cell = @cells[column_index + 3]
      third_cell = @cells[column_index + 6]
      if(first_cell.kind_of?(OccupiedCell) and first_cell.token == second_cell.token and first_cell.token == third_cell.token)
        return true
      end
    }

    2.times { |i|
      diagonal_offset = (i + 1) * 2
      diagonal_index = 4
      first_cell = @cells[diagonal_index - diagonal_offset]
      second_cell = @cells[diagonal_index]
      third_cell = @cells[diagonal_index + diagonal_offset]
      if(first_cell.kind_of?(OccupiedCell) and first_cell.token == second_cell.token and first_cell.token == third_cell.token)
        return true
      end
    }

    false
  end

  def draw?
    if win? == false and @cells.count == 9
      true
    end
  end

  def register_listener(event_name, &block)
    @event_hash[event_name] = block
  end

  # def terminate(&block)
  #   @cells.each(&block)
  # end

  def empty_cell!(value)
    @cells.each{|i|
      @cells[i] = empty
    }
  end

  # def row_equal!(position)
  #   raise 'the game is over' unless (@cells[3] == @cells[4] and @cells[4] == @cells[5])
  # end

  # def column_equal!(position)
  #   raise 'the game is over' unless (@cells[0] == @cells[3] and @cells[3] == @cells[6])
  # end

  def current_player(token)
    i = @count.length 
    if i == 0
      @count[i] = token
      return true
    else
      if @count[i - 1] == token
        return false
      else
        return true
      end
    end
  end

  
    
  private
  def empty() @@EMPTY; end

end