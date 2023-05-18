
$graphical = true


require_relative "q9a_q1_beller_m.rb"
require_relative "../karel/robota"
require_relative "../mixins/diamond_beepers_t5"
require_relative "../mixins/beller"

# places beepers in a vertical of 5 rows.
def task()  

  karel = Bell.new(2, 2,NORTH, 26)
  karel.left_bell
  karel.centre_bell
  karel.right_bell
  karel.displays 
  
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