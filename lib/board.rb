class Board
  
attr_reader :slots

  def initialize
    @slots = [" "," "," "," "," "," "," "," "," "]
  end

  def display
    puts %{
       #{@slots[0]} | #{@slots[1]} | #{@slots[2]}
      -----------
       #{@slots[3]} | #{@slots[4]} | #{@slots[5]}
      -----------
       #{@slots[6]} | #{@slots[7]} | #{@slots[8]}
    }
  end

  def slot_taken?(slot)
    @slots[slot] != (" ") ? true : false
  end

  def slot_exists?

  end

  def fill_in_slot(slot, symbol)
    @slots[slot] = symbol
  end

  def check_win

  end

  def check_draw

  end
end
