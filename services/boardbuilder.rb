require 'pry'
class BoardBuilder
  attr_accessor :square_hash
  #will be a hash of keys, each key corresponds 
  #to a location on the board
  def initialize(square_hash)
    @square_hash = square_hash
  end

  def print_board 
      puts"  1   2   3",
          "A #{square_hash[A1]}  | #{square_hash[A2]}  | #{square_hash[A3]} ",
          "  ----------",
          "B #{square_hash[B1]}  | #{square_hash[B2]}  | #{square_hash[B3]} ",
          "  ----------",
          "C #{square_hash[C1]}  | #{square_hash[C2]}  | #{square_hash[C3]} "
  end
end