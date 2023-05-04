#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/diamond_beepers_t5"
# A class whose robots know how to sweep a short staircase of beepers
class Q5AQ1BowlingM < UrRobot
  include Turner
  include DiamondBeepers

  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  # climb while placing beepers in 5 colloms.
  def bowling_pins
    first_row
    calculated_beeper
    next_row
    left_beeper1
    centre_1
    right_beeper1
    centre_1
    next_rowR
    calculated_beeper
    left_beeper2
    centre_2
    right_beeper2
    centre_2
    next_rowR
    left_beeper3
    right_beeper3
    centre_3   
    next_rowR
  end

end
   