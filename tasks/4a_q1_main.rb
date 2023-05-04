#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "a_q2_beepers_robot"
require_relative "../karel/robota"


# a task for placing 5 vertical beepers in 1 row.
def task()
  karel = AQ2BeepersRobot.new(3,3,NORTH,5)
  karel.mover_beeper
  karel.mover_beeper
  karel.mover_beeper
  karel.mover_beeper
  karel.mover_beeper
  karel.display()

end

if __FILE__ == $0
  if $graphical
     screen = window(12, 70) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end