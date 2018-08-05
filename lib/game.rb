class Game

  attr_accessor :board, :players, :current_player

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
    @current_player = @players[:O]
  end

  def save_move
    slot = Messages.prompt_move(@current_player)
    
    if board.slot_exists?(slot)
      board.fill_in_slot(slot, @current_player) unless board.slot_taken?(slot)
    end
  end

  def switch_active_player
    @current_player = @current_player == @players[:O] ? @players[:X] : @players[:O]
  end

  def check_status

  end

  def exit_game

  end
end

class ExitError < StandardError

end

class InvalidSlotError < StandardError
  def initialize(message)
    super(message)
  end
end

class SlotTakenError < StandardError
  def initialize(message)
    super(message)
  end
end

