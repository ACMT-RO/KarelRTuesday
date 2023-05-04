#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"


# a class of robot for placing 5 vertical beepers in 1 row.
class AQ2BeepersRobot < UrRobot 
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

  # move and place beeper (combined) = mover_beeper
  def mover_beeper
    move
    place_beeper
  end
end

