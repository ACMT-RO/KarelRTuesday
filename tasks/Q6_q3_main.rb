
$graphical = true

require_relative "q6a_q1_ligne_m"
require_relative "../karel/robota"
require_relative "../mixins/diamond_beepers_t5"
# places beepers in a vertical of 5 rows.
def task()  
  karel = Robo1.new(1, 1,NORTH, 1)
  karel = Robo2.new(6, 1, EAST, 0)
  karel = Robo3.new(6, 6, SOUTH, 0)
  karel = Robo4.new(1, 6, OUEST, 0)
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