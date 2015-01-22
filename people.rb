class Person
	attr_accessor :name
	def initialize(name)
		@name=name
	end

	def greeting
		"Hi, my name is #{name}."	
	end
end
class Student < Person
	def learn
		"I get it!"	
	end
end


class Instructor < Person
	def teach
		"Everything in Ruby is an Object."	
	end
end

name1=Student.new("Dan")
name2=Instructor.new("Chris")

puts name1.learn
puts name2.teach
puts name1.greeting
puts name2.greeting

#the teach method is local to the Instructor class therefore the Studetn class cannot "see" it.