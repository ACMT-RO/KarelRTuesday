#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

require_relative "q4a_q1_beeper_m"
require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class QA1AQ2Beeper < QA1AQ1Beeper
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  # create a square out of beebers (5x5)
  def square_left
   mover_beeper
   turn_right
   move
   turn_right
  end

  def square_right
    mover_beeper
    turn_left
    move
    turn_left
  end
end
   