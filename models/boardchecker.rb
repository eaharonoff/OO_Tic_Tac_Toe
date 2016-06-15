class BoardChecker
attr_accessor :square_hash
  
  def initialize (square_hash)
    @square_hash = square_hash
    @@winning_moves = [
    ["A1","A2","A3"],
    ["B1","B2","B3"],
    ["C1","C2","C3"],
    ["A1","B1","C1"],
    ["A2","B2","C2"],
    ["A3","B3","C3"],
    ["A1","B2","C3"],
    ["A3","B2","C1"]
  ]
  end

  def self.winning_moves
    @@winning_moves
  end

  def full_board
    self.square_hash.has_value?(nil) ? false : true
  end
  
  # put elsewhere? 
  def clear
     square_hash.each do |location,value|
       value = nil
    end
  end

  def tie_game
    have_winner == false && full_board == true ? true : false 
  end

  def have_winner
    winner_detected != nil ? true : false 
  end

  def winner_detected?
    winner = SquareChecker.winning_moves.detect{|winning_combo| square_hash[winning_combo[0]] ==  square_hash[winning_combo[1]] && square_hash[winning_combo[1]] ==  square_hash[winning_combo[2]]}
  end
end