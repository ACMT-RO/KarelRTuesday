
$graphical = true

require_relative "q6a_q2_ligne_m"
require_relative "q6a_q1_ligne_m"
require_relative "../karel/robota"
require_relative "../mixins/diamond_beepers_t5"
# places beepers in a vertical of 5 rows.
def task()  
  world = Robota::World
  world.read_world("../karel/ligne")

  karel = Q6AQ2Ligne.new(5, 2,SOUTH, 0)  

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