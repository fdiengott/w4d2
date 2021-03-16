
class Piece
  attr_accessor :pos
  
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def inspect
    "#<Piece pos: #{pos}, color: #{color}>"
  end
  
end