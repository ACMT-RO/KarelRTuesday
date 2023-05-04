
$graphical = true

require_relative "q5a_q1_Bowling_m"
require_relative "../karel/robota"
require_relative "../mixins/diamond_beepers_t5"
# places beepers in a vertical of 5 rows.
def task()  
  karel = Q5AQ1BowlingM.new(1, 5,SOUTH, 10)
  karel.bowling_pins
  

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