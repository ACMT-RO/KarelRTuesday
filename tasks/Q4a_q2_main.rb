
$graphical = true

require_relative "q4a_q1_beeper_m"
require_relative "q4a_q2_beeper_m"
require_relative "../karel/robota"

# places beepers in a vertical of 5, and rows of 5.
def task()  
  karel = QA1AQ2Beeper.new(3, 3,NORTH, 25)
  karel.square_left
  karel.square_right
  karel.square_left
  karel.square_right
  karel.square_left 
end

if __FILE__ == $0
  if $graphical
     screen = window(12, 80) 
     screen.run do
       task
     end
   else 
     task
   end
end