#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/diamond_beepers_t5"
# A class whose robots know how to sweep a short staircase of beepers
class Track < UrRobot
  include Turner
  include DiamondBeepers

  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  def top
    next_row
    next_row
    next_rowL
    pick_beeper
    next_row
    pick_beeper
    first_row
    next_row
    next_rowR
    calculated_beeper
    move
    calculated_beeper
  end

  def bottom
    first_row
    next_row
    next_rowR
    pick_beeper
    next_row
    pick_beeper
    first_row
    next_row
    next_rowR
    calculated_beeper
    move
    calculated_beeper
  end

  def middle
    first_row
    next_row
    turn_left
    move
    turn_around
  end
end
   