require_relative 'piece'

class Board

  attr_reader :board

  def initialize
    @board = setup_board # fill with ?
  end

  def setup_board
    #4 kn, R, B
    #2 Q K
    #16 pwn
    #16 null_p
    knight_pos = [[0,1],[0,6],[7,1],[7,6]]
    black_knights = [Knight.new(:black,),Knight.new(:black,)]
    knights = 4.times.map do |i|
      if i < 2
        Knight.new(:black) #TODO : more args later 
      else
        Knight.new(:white) #TODO : more args later 
      end
    end

    Array.new(8) { Array.new(8) }

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