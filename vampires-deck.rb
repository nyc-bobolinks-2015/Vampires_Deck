
def print_definition
	definition = pick_card.each_key {|def| puts key}
	#user_input
end

def user_input
	input = ""
	definition #maybe I should take this out
	input = gets.chomp
end