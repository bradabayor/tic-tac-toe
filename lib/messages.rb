require_relative "game"
require_relative "board"

class Messages
  def self.opening_message
    puts %{
  1. Start Game
  2. Exit
    }
    return gets.chomp.to_i
  end

  def self.add_new_player
    print %{
  Enter Your Name: }
    return gets.chomp.to_s
  end

  def self.prompt_move(player)
    print %{
  #{player.name}'s Move: }
    return gets.chomp.to_s
  end

  def self.display_error(e)
    puts %{
  Error! => #{e.message}
    }
  end
end

