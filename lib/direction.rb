# frozen_string_literal: true

module ToyRobot
  module Direction
    NORTH = 0
    EAST = 1
    SOUTH = 2
    WEST = 3

    def self.parse(str)
      case str
      when 'NORTH'
        NORTH
      when 'EAST'
        EAST
      when 'SOUTH'
        SOUTH
      when 'WEST'
        WEST
      else
        raise ArgumentError, str
      end
    end

    # using a switch statement
    def self.left(direction)
      case direction
      when NORTH
        WEST
      when EAST
        NORTH
      when SOUTH
        EAST
      when WEST
        SOUTH
      end
    end

    # Alternatively you can do some fancy maths, but is less readable.
    # Readability is generally more important than brevity, in my opinion.
    # You tend to spend more time reading code than writing code.
    def self.right(direction)
      # Add 1 to get the next direction in the sequence (clockwise).
      # If we add 1 to WEST, we need to wrap around to NORTH again, which is where modulo (%) comes in.
      (direction + 1) % 4
    end
  end
end
