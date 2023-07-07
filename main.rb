require_relative './lib/board'

board = Board.new

board.knight_moves([0, 0], [1, 2])
board.knight_moves([0, 0], [3, 3])
board.knight_moves([3, 3], [0, 0])
board.knight_moves([3, 3], [0, 7])
board.knight_moves([3, 3], [4, 3])
