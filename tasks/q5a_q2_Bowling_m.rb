#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

require_relative "q5a_q1_Bowling_m"
require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/diamond_beepers_t5"
# A class whose robots know how to sweep a short staircase of beepers
class Q5AQ2BowlingM < Q5AQ1BowlingM
  include Turner
  include DiamondBeepers

  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  # climb while placing beepers in 5 colloms.
  def Brocoli
    bowling_pins
    calculated_beeper
    left_beeper2
    centre_2
    right_beeper2
    centre_2
    next_rowR
    left_beeper1
    centre_1
    right_beeper1
    centre_1
    next_rowR
    calculated_beeper
    first_row
  end

end
   