require 'pry'
class SquareChecker 
  attr_accessor :square, :square_hash
  def initialize(square_hash)
    @square_hash = square_hash
  end 
  def unoccupied?(square)
    self.square_hash[square].nil?
  end
  
end
