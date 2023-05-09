
#           {}       "Last row"
#         {}  {}     "Left/right beeper 1"
#       {}  {}  {}   "Left/right beeper 2"
#     {}  {}  {}  {} "Left/right beeper 3"
#       {}  {}  {}   "Left/right beeper 2"
#         {}  {}     "Left/right beeper 1"
#           {}       "first row"

require_relative "../mixins/turner"


module DiamondBeepers
  include Turner

# place first beeper in diamond shape by turning left twice (using module turner) and moving forward by 1.
  def first_row
    turn_around
    move
  end

# moivng to the next row by moving forward by 1 (used if direction of Karel is facing the next row "NORTH").
  def next_row
    move
  end

# moving to the next row by turning left then forward by 1 (used if direction of Karel is WEST) <--
  def next_rowL
    turn_left
    move
  end

# moving to the next row by turning left then forward by 1 (used if direction of Karel is EAST) -->
  def next_rowR
    turn_right
    move
  end

# placing beeper wherever Karel is standing (un needed movement :) )
  def calculated_beeper
    put_beeper
  end


# brings Karel back to the centre of the piramid for "beeper 1"
  def centre_1
    move
  end

# brings Karel back to the centre of the piramid for "beeper 2"
  def centre_2
    move
    move
  end

# brings Karel back to the centre of the piramid for "beeper 3"
  def centre_3
    move
    move
    move 
  end

# used to form the first row in piramid shape or diamond shape for "beeper 1". (use him first)
  def left_beeper1
    turn_left
    move
    put_beeper
    turn_around
  end

# use him second
  def right_beeper1
    move
    put_beeper
    turn_around
  end

# used to form the second row in piramid shape or diamond shape "beeper 2". (use him first)
  def left_beeper2
    turn_left
    move
    move
    put_beeper
    turn_around
  end

# use him second
  def right_beeper2
    move
    move
    put_beeper
    turn_around
  end

# used to form the second row in piramid shape or diamond shape "beeper 3". (use him first)
  def left_beeper3
    turn_left
    move
    put_beeper
    move
    move
    put_beeper
    turn_around
    move
    move
    move
  end

# use him second
  def right_beeper3
    move
    put_beeper
    move
    move
    put_beeper
    turn_around
  end


  def move_7S
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
  end

  def marcher_8
    move
    move
    move
    move
    move
    move
    move
    move
  end

end