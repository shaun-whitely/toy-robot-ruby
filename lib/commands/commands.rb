# frozen_string_literal: true

module ToyRobot
  module Commands
    class Place
      attr_reader :x, :y, :direction

      def initialize(x, y, direction)
        @x = x
        @y = y
        @direction = direction
      end

      def ==(other)
        x == other.x &&
          y == other.y &&
          direction == other.direction
      end

      def self.parse(str)
        x_s, y_s, d_s = str.split(',', 3)
        x = Integer(x_s)
        y = Integer(y_s)
        direction = Direction.parse(d_s)
        new(x, y, direction)
      end
    end

    class Left
    end

    class Right
    end

    class Forward
    end

    class Report
    end

    def self.parse(str)
      cmd, args = str.split(' ', 2)

      case cmd
      when 'PLACE'
        raise ArgumentError, str if args.nil?

        Place.parse(args)
      else
        raise ArgumentError, cmd
      end
    end
  end
end
