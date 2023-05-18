#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/diamond_beepers_t5"
require_relative "../mixins/beller"

# A class whose robots know how to sweep create bells out of beepers
class Bell < UrRobot
  include Turner
  include DiamondBeepers
  include Beller

  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  # Code that makes the left side of the bell (use it fisrt)
  def left_bell
    turn_right
    move
    put_beeper
    move
    turn_left
    climb_2
    return_2
    turn_left
    move
    turn_left
    climb_6
    turn_right
    move
    turn_right
  end

# Code that creates the centre beam of the bell (use it second)
  def centre_bell
    climb_8
  end

# Code that created the right side of the bell (use it third)
  def right_bell
    turn_right
    move
    turn_left
    climb_6
    return_6
    turn_left
    move
    put_beeper
    turn_left
    move
    put_beeper
    return_2
    turn_left
    move
    put_beeper
  end

  def displays
    move
    turn_left
  end

end
   