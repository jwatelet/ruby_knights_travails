class Node
  attr_reader :position, :children
  attr_accessor :parent

  def initialize(position, parent = nil)
    @position = position
    @children = []
    @parent = parent
  end
end
