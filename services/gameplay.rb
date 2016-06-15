class GamePlay
  attr_accessor :sqaures, :square_checker, :player_instance, :player_symbol, :computer_instance, :computer_symbol
  def initialize(squares,square_checker)
    @boxes = boxes
    @box_checker = box_checker
  end

  def start_game
    welcome
    want_to_play?
    create_names_and_symbols
  end

  def welcome
    puts "Welcome to Emanuel's Tic-Tac-Toe!"
  end

  def want_to_play?
    puts "would you like to play? (y/n)"
    @response = gets.chomp
    if @response == 'n'
      abort("Ok.Goodbye!")
    end
  end

  #initiates player/computer with symbols
  def create_names_and_symbols
    name = ask_4_name
    sym = ask_4_symbol
    :player_instance = Player.new(name,sym)
    sym == 'X' ? :computer_instance = Computer.new('O') : :computer_instance = Computer.new('X')
  end

  def ask_4_name
    puts "What is your name?"
    playerName = gets.chomp
  end

  def ask_4_symbol
    puts "Would you like to be 'X' or 'O'"
    playerSymbol = gets.chomp.capitalize
  end


end