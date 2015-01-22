class Rover
	attr_accessor :x, :y, :direction
	def initialize(x = 0, y = 0, direction = "N")
		@x = x
		@y = y
		@direction = direction
	end
	def read_instructions(instructions)
		instructions.each_char do |instruction|
			if instruction == "M"
				move
			elsif instruction == "L" || instruction == "R"
				rotate(instruction)
			else "That's not a valid command!"
		    end
		end
	end
	def move
		case @direction
		when "N"
			then @y +=1
		when "S"
			then @y -=1
		when "E"
			then @x +=1
		when "W"
			then @x -=1			
		end  
	end
	def rotate(turn)
	
		if ((@direction == "N") && (turn == "L")) || ((@direction == "S") && (turn == "R"))
			@direction = "W" 

		elsif ((@direction == "S") && (turn == "L")) || ((@direction == "N") && (turn == "R"))
			@direction = "E"

		elsif ((@direction == "E") && (turn == "L")) || ((@direction == "W") && (turn == "R"))
			@direction = "N"
		elsif ((@direction == "W") && (turn == "L")) || ((@direction == "E") && (turn == "R"))
			@direction = "S"

		end
	end
	def to_s
		"My new location is #{@x}, #{@y}, #{@direction}"
	end
end
puts "What is you plateau size (length and width)"
rover_one = gets.chomp
rover1=Rover.new
puts "Please input move instruction L or R to turn the rover and M to move the rover.
For example, RMMLMRM"
intial=gets.chomp.upcase
rover1.read_instructions(intial)
puts rover1
rover2=Rover.new
puts "Please input move instuctions L or R to turn the rover and M to move the rover.
For example, RMMLMRM"
intial=gets.chomp.upcase
rover2.read_instructions(intial)
puts rover2