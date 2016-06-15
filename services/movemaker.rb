class MoveMaker
  attr_accessor :symbol, :square_hash, :placement
  
  def initialize(square_hash)
    @square_hash = square_hash

  end

  def in_spot(symbol, placement)
    square_hash[placement] = symbol 
  end

end
