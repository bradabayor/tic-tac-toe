class Board
  
attr_reader :slots

  def initialize
    @slots = {
      "a1" => " ",
      "a2" => " ",
      "a3" => " ",
      "b1" => " ",
      "b2" => " ",
      "b3" => " ",
      "c1" => " ",
      "c2" => " ",
      "c3" => " "
    }
  end

  def display
    puts %{
        A   B   C
      1 #{@slots["a1"]} | #{@slots["b1"]} | #{@slots["c1"]}
       ---+---+---
      2 #{@slots["a2"]} | #{@slots["b2"]} | #{@slots["c2"]}
       ---+---+---
      3 #{@slots["a3"]} | #{@slots["b3"]} | #{@slots["c3"]}
    }
  end

  def slot_taken?(slot)
    @slots[slot] == (" ") ? false : true
  end

  def slot_exists?(slot)
    if @slots.has_key?(slot)
      return true
    else
      raise InvalidSlotError.new
    end
  end

  def fill_in_slot(slot, current_player)
    @slots[slot] = current_player.token
  end

  def check_win

  end

  def check_draw

  end
end
