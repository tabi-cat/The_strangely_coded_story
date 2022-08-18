#!/usr/bin/env ruby

$names = [] # global variable

# defines the Person class

class Person
	attr_accessor :name, :surname
	
	def initialize(name='Jo', surname='James') # default name & surname
		@name = name # instance variables
		@surname = surname
	end

	def introduction
		puts "This person's name is #{@name} #{@surname}."
	end
	def specific_intro
		puts "#{@name} is an ordinary person."
	end
end

# Each character subclass inherits from the Person class

class Warrior < Person
	def specific_intro
		puts "#{@name} is a warrior, and can fight."
	end
end

class Knight < Warrior
	def specific_intro
		super
		puts "#{@name} is a knight, and can ride on horseback."
	end
end

class Mage < Person
	def specific_intro
		puts "#{@name} is a mage, and can cast spells."
	end
end

class Ninja < Person
	def specific_intro
		puts "#{@name} is a ninja, and can spy stealthily."
	end
end


# Creates the main characters

def character_creator
	
	charList = []
	4.times do
		puts "Enter a letter:"
		char = gets.chomp
		char = char.capitalize
		charList.push(char)
	end
	
	name1 = "#{charList[0]}egli"; surname1 = "Owen"; $names.push(name1)
	name2 = "#{charList[1]}ofla"; surname2 = "Cainda"; $names.push(name2)
	name3 = "#{charList[2]}oku"; surname3 = "Tanatenka"; $names.push(name3)
	name4 = "#{charList[3]}ergo"; surname4 = "Caglaod"; $names.push(name4)
	puts "\nFive brave people meet and become friends."
	puts ""
	
	p1 = Warrior.new(name1,surname1); p1.introduction; p1.specific_intro
	puts ""
	p2 = Mage.new(name2,surname2); p2.introduction; p2.specific_intro
	puts ""
	p3 = Ninja.new(name3,surname3); p3.introduction; p3.specific_intro
	puts ""
	p4 = Knight.new(name4,surname4); p4.introduction; p4.specific_intro
	puts ""
	p5 = Person.new; p5.introduction; p5.specific_intro; $names.push(p5.name)
	puts ""
	puts "#{p5.name} will lead this party on an adventure."
	
end


# multiple assignment, swapping words in a sentence

def sentence_swap
	
	puts "The Knight ventured into a strange forest..."; puts""
	
	w1, w2, w3, w4 = "the castle", "the dragon", "his breakfast", "a chair"
	
	puts "The brave knight stormed #{w1}, slayed #{w2},
	ate #{w3} and sat on #{w4}."
	
	puts"
	Swap!
	"
	w1, w2, w3, w4, = w4, w1, w2, w3
	
	puts "The brave knight stormed #{w1}, slayed #{w2},
	ate #{w3} and sat on #{w4}."
	
end


# number stuff

def num_crunch

	puts "The adventuring party encounter a hungry monster!"
	puts "Quick! Feed it a number!"
	stringList = []; n = []; int16List = []
	
	7.times do
		number = gets.chomp
		stringList.push(number)
		puts "Another number!"
	end
	puts "Oh. It's full."
	puts "
	The group watches in amazement as the monster
	starts scribbling on the wall of its cave..."
	puts ""
	
	stringList.each do |num|
		float = num.to_f
		n.push(float)
	end
	
	puts "I shall only divide by the non-zero numbers given to me."
	n.each do |num|
		puts "125 divided by #{num} is #{125/num}" unless num.zero?
	end
	
	puts "\nI have converted all your numbers to base 10 floats"
	n.each do |num|
		if n[0] < num
			puts "#{n[0]} is smaller than #{num}."
		else
			puts "#{n[0]} is not smaller than #{num}"
		end
	end	
	
	puts "\nThe adventurers leave the cave, 
	stunned at the monster's arithmetic ability."
	
end


# The Maze (I will give you no hints!)

def ruby_maze

	puts "The brave adventurers enter a mysterious labyrinth..."
	puts ""
	puts "They reach a chasm. The way shuts behind them.
	A voice whispers from the depths... 'Is this true or false?'"
	
	while true
		puts"\nAn expression shimmers in the dark air:
		5 ** 3 ** 2 == 15625"
		puts "Enter T or F:"
		ans = gets.chomp; ans = ans.capitalize
		
		if ans == 'T'
			puts "\nThis is not the Ruby way. Try again."
		elsif ans == 'F'
			puts "\nCorrect. 5 ** 3 ** 2 == #{5**3**2}"
			break
		else
			puts "\nInvalid input. Try again."
		end
	end
	puts ""
	puts "-------------------------------------------------------------"
	puts "\nA stone walkway rumbles out of the opposite side of the chasm,
	bridging the gap and allowing the adventuring party to cross."
	
	puts "\nThere are three passages to choose from. 
	The Warrior wonders which way will lead to the exit."
	
	puts "\nThe Mage spies a fourth passage, invisible to the rest of the party.
	Everyone follows the Mage's lead."

	puts "\nThey come to a dead end. Writing appears on the wall: 
		'To exit, you must EXCEPT my challenge.'"
	
	while true
		puts "\nA single underlined number is on the wall: '125'."
		puts "The Ninja notices its underline looks like a slash... /"
		
		puts "Enter your answer here:"
		ans = gets.chomp
		
		begin
			num = ans.to_i
			125/num
		rescue
			puts "
			Exception Rescued. Well done."
			break
		else
			puts "
			DIVIDED, YOU FALL. Try again."
		end
	end
	
	puts ""
	puts "-------------------------------------------------------------"
	puts "\nA small hole opens in the wall, and a kitten hops out.
	Stairs appear in the floor, and the adventuring party follow the kitten downwards."
	
	puts "\nThe kitten trots easily through the rest of the labyrinth,
	and the adventurers see light at the end of the tunnel."

end


# Potentially using global variables

def farewell

	unless $names.empty?
		puts "Farewell to #{$names[4]}, #{$names[0]}, #{$names[1]}, #{$names[2]} and #{$names[3]}."
		puts "Your names were stored in a global variable!"
		puts "So everyone in the world of Strange Code has heard of you!"
		puts "Goodbye, friends. May you have many more adventures."
		
	else
		puts "Farewell, brave adventurers. Your journey has ended."
	end

end


# Heredoc Main Menu

menu = <<USER_MENU

-------------------------------------------------------------
THE STRANGELY CODED STORY

CH.1. MEET THE CHARACTERS
CH.2. THE STRINGY SWITCHING FOREST
CH.3. THE NUMBER CRUNCHER
CH.4. THE RUBY MAZE
CH.5. FAREWELL, MY FRIENDS


Pick an option by entering its number.
Enter 'x' to quit.
USER_MENU


# displays menu and receives user input until they quit

while true

	puts menu
	choice = gets.chomp
	puts ""
	puts "-------------------------------------------------------------"
	puts ""
	
	if choice == '1'
		character_creator
	elsif choice == '2'
		sentence_swap
	elsif choice == '3'
		num_crunch
	elsif choice == '4'
		ruby_maze
	elsif choice == '5'
		farewell
	elsif choice == 'x'
		break
	else
		puts "Invalid input. Try again."
	end
end