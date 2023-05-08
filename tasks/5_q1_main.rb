#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "a_q1_beepers_robot"
require_relative "../karel/robota"
require_relative "inheritor_4_a"

# a task for placing 5 vertical beepers in 1 row.
def task()
  karel = Inheritor4A.new(3,3,NORTH,25)
  karel.square_beeper
  karel.square_beeper
  karel.mover_beeper
  move
end

if __FILE__ == $0
  if $graphical
     screen = window(9, 70) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end