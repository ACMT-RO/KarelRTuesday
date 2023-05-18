#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/diamond_beepers_t5"
require_relative "../mixins/beller"

# A class whose robots know how to sweep create bells out of beepers
class Grincher < UrRobot
  include Turner
  include DiamondBeepers
  include Beller

  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  def enter_run
    steal
    escape
    turn_right
    move
    move
    move
    turn_right
  end

  def enter
    steal
    escape
    turn_right
    move
  end

  def enter_run1
    steal
    escape
    turn_left
    move
    move
    move
    turn_left
  end
end
   