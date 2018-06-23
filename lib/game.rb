class Game

  attr_accessor :board, :players

  def initialize
    @board = Board.new
    @players = Hash.new
    @current_player = nil
  end

  Player = Struct.new(:name, :token)

  def add_player
    name = Messages.add_new_player

    if @players.empty?
      token = "O"
    else
      token = "X"
    end

    player = Player.new(name, token)
    @players[player.token.to_sym] = player
    @current_player = @players[0]
  end

  def enter_move

  end

  def save_move
    
  end

  def switch_active_player

  end

  def check_status

  end

  def exit_game

  end
end

