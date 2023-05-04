
$graphical = true

require_relative "q4a_q1_beeper_m"
require_relative "../karel/robota"

# places beepers in a vertical of 5 rows.
def task()  
  karel = QA1AQ1Beeper.new(3, 3,NORTH, 5)
  karel.mover_beeper
  

end

if __FILE__ == $0
  if $graphical
     screen = window(8, 120) 
     screen.run do
       task
     end
   else 
     task
   end
end