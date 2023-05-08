#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "a_q1_beepers_robot"

# a class of robot for placing 5 vertical beepers in 1 row.
class Inheritor4A < AQ1BeepersRobot 
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

  # a movement for placing beepers in rows of 5 for 5 coloms
  def square_beeper
  	mover_beeper
  	turn_right
  	move
  	turn_right
  	mover_beeper
  	turn_left
  	move
  	turn_left
  end
end

