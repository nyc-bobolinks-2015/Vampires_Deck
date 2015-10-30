# class Test
#test
# 	def initialize
# 		@defintion = {"I'm a definition." => "I'm an answer", "I'm a definition." => "I'm an answer"}
# 		print_definition
# 	end

	def print_definition
		puts "definition"
		# @definition = pick_card.each_key {|def_key| puts def_key}
		@defintion.each {|def_key| puts def_key}
		puts
		user_input
	end

	def user_input
		input = ""
		@definition #maybe I should take this out
		input = gets.chomp
		yay
	end
#test
	# def yay
	# 	puts "You did it!!!"
	# end

end

let = Test.new()
