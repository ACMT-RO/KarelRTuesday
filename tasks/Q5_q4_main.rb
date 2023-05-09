
$graphical = true

require_relative "q5a_q4_Bowling_m"
require_relative "q5a_q3_Bowling_m"
require_relative "q5a_q2_Bowling_m"
require_relative "q5a_q1_Bowling_m"
require_relative "../karel/robota"
require_relative "../mixins/turner"
require_relative "../mixins/diamond_beepers_t5"
# places beepers in a vertical of 5 rows.
def task() 
  include Turner 
  world = Robota::World
  world.read_world("../karel/horloge")
  
  karel = Q5AQ3Horloge.new(9, 3,NORTH, 32)
  karel.move_5
  karel.clock_12
  karel.move
  karel.move
  karel.turn_right
  karel.move 
  karel.put_beeper
  karel.move
  karel.turn_left
  karel.move
  karel.put_beeper
  karel.move 
  karel.turn_right
  karel.move 
  karel.move
  karel.clock_3
  karel.move
  karel.move
  karel.turn_right
  karel.move 
  karel.put_beeper
  karel.move
  karel.turn_left
  karel.move
  karel.put_beeper
  karel.move 
  karel.turn_right
  karel.move 
  karel.move
  karel.clock_6
  karel.move
  karel.move
  karel.turn_right
  karel.move 
  karel.put_beeper
  karel.move
  karel.turn_left
  karel.move
  karel.put_beeper
  karel.move 
  karel.turn_right
  karel.move 
  karel.move
  karel.clock_9
  karel.move
  karel.move
  karel.turn_right
  karel.move 
  karel.put_beeper
  karel.move
  karel.turn_left
  karel.move
  karel.put_beeper
  karel.move 
  karel.turn_right
  karel.move 
  karel.move

end

if __FILE__ == $0
  if $graphical
     screen = window(11, 90) 
     screen.run do
       task
     end
   else 
     task
   end
end