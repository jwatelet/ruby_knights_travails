class Knight
  POSSIBLE_MOVES = [
    [-2, 1], [-2, -1], [2, -1], [2, 1],
    [1, 2], [1, -1], [-1, 2], [-1, -2]
  ].freeze

  def next_moves(position)
    moves = POSSIBLE_MOVES.map do |move|
      next_position = calculate_position(position, move)

      next_position if valid?(next_position) 
    end.compact
    moves
  end

  private

  def valid?(position)
    x, y = position

    x >= 0 && x <= 7 && y >= 0 && y <= 7
  end

  def calculate_position(position, move)
    pos_x, pos_y = position
    move_x, move_y = move

    [pos_x + move_x, pos_y + move_y]
  end
end
