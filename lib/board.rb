require_relative 'knight'
require_relative 'node'

class Board
  def initialize
    @knight = Knight.new
  end

  def knight_moves(position, destination)
    current = make_tree(position, destination)
    print_knight_moves(make_history(current, position), position, destination)
  end

  def make_tree(position, destination)
    queue = [Node.new(position)]
    current = queue.shift

    until current.position == destination
      @knight.next_moves(current.position).each do |new_position|
        current.children << child = Node.new(new_position, current)
        queue << child
      end
      current = queue.shift
    end
    current
  end

  def make_history(current, position)
    history = []
    until current.position == position
      history << current.position
      current = current.parent
    end
    history << current.position
    history
  end

  def print_knight_moves(history, position, destination)
    puts "You made it in #{history.size - 1} moves!"
    puts "To get from #{position} to #{destination} you must traverse the following path:"
    history.reverse.each { |move| puts move.to_s }
  end
end
