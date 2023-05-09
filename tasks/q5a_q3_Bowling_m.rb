#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

require_relative "q5a_q2_Bowling_m"
require_relative "q5a_q1_Bowling_m"
require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/diamond_beepers_t5"
# A class whose robots know how to sweep a short staircase of beepers
class Q5AQ3Sementing < Q5AQ2BowlingM
  include Turner
  include DiamondBeepers

  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  # make square out of beepers
  def sementer_block8
    move_7S
    turn_left
    move_7S
    turn_left
    move_7S
    turn_left
    move_7S
    turn_right
  end

end
   