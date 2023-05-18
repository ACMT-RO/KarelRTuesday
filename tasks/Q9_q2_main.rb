
$graphical = true

require_relative "q9a_q2_grincher"
require_relative "q9a_q1_beller_m"
require_relative "../karel/robota"
require_relative "../mixins/diamond_beepers_t5"
require_relative "../mixins/beller"

# places beepers in a vertical of 5 rows.
def task()  

  world = Robota::World
  world.read_world("../karel/grincher")

  karel = Grincher.new(12, 4,SOUTH, 0)
  karel.enter_run
  karel.enter_run
  karel.enter
  karel.turn_left
  karel.return_6
  karel.turn_right
  karel.move
  karel.turn_left
  karel.enter_run1
  karel.enter_run1
  karel.enter_run1
  karel.turn_right
  karel.move
  karel.move
  karel.move
  karel.move
  karel.move
  karel.move
  karel.move
  karel.move
  karel.move
  karel.move
  karel
end

if __FILE__ == $0
  if $graphical
     screen = window(12, 90) 
     screen.run do
       task
     end
   else 
     task
   end
end