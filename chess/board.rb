require_relative 'piece'

class Board

  attr_reader :board

  def initialize
    @board = Array.new(8) { Array.new(8) }  # fill with ?
  end

  def [](pos)
    row, col = pos
    @board[row][col]
  end
  
  def []=(pos, val)
    row, col = pos
    @board[row][col] = val
  end

  private 

  def null_piece
    # get the null piece (singleton)
  end

end