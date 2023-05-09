
$graphical = true

require_relative "q5a_q3_Bowling_m"
require_relative "q5a_q2_Bowling_m"
require_relative "q5a_q1_Bowling_m"
require_relative "../karel/robota"
require_relative "../mixins/turner"
require_relative "../mixins/diamond_beepers_t5"
# places beepers in a vertical of 5 rows.
def task()  
  world = Robota::World
  world.read_world("../karel/Sementer")
  
  karel = Q5AQ3Sementing.new(10, 3,SOUTH, 100)
  karel.sementer_block8
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