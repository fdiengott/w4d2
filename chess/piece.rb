
class Piece
  attr_accessor :pos
  attr_reader :color
  
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def inspect
   "#<Piece pos: #{pos}, color: #{color}>"
  end

  def moves
    #TODO : will use move_dirs from module
    #returns an arry of possible moves
    raise "Need to override parent class!!"
  end
end