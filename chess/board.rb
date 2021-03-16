require_relative 'piece'

class Board

  attr_reader :board

  def initialize
    @board = Array.new(8) { Array.new(8) }
    board.each_with_index do |row, i|
      row.each_with_index do |el, j|
        if [0,1].include?(i)
          @board[i][j] = Piece.new(:white, board, [i,j])
        elsif [6,7].include?(i)
          @board[i][j] = Piece.new(:black, board, [i,j])
        else 
          @board[i][j] = nil
        end 
      end
    end
    # place_pieces
  end

  def place_pieces
    #4 kn, R, B
    #2 Q K
    #16 pwn
    #16 null_p
    knight_pos = [[0,1],[0,6],[7,1],[7,6]]
    knights = 4.times do |i|
      if i < 2
        pos = knight_pos.shift
        board[pos] = Knight.new(:black, board, pos) 
      else
        pos = knight_pos.shift
        board[pos] = Knight.new(:white, board, pos) 
      end
    end


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