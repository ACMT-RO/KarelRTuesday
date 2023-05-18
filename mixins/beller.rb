require_relative "../mixins/turner"


module Beller
  include Turner

# creer une collone de beepers de taille 8. (Karel vas rester 1 beeper avant le dernier beeper)
  def climb_8
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    turn_around
    move
  end

# creer une collone de beepers de taille 6. (Karel vas rester sur le dernier beeper)
  def climb_6
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
  end

  def return_6
    turn_around
    move
    move
    move
    move
    move
    move
  end

# creer une collone de beepers de taille 2. (Karel vas rester sur le dernier beeper)
  def climb_2
    put_beeper
    move
    put_beeper
  end

  def return_2
    turn_around
    move
  end

    def steal
    move
    move
    turn_right
    move
    turn_left
    move
    move
    pick_beeper
    pick_beeper
    turn_right
    move
    pick_beeper
    pick_beeper
    end

    def escape
        turn_around
        move
        turn_left
        move
        move
        turn_right
        move
        turn_left
        move
        move
    end
    

end