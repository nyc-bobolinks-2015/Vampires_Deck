class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    puts "You ever use flash cards before? Just give the word for each definition"
    load_txt_file
  end

  def load_txt_file
    @cards = File.open('definitions.txt').readlines
    deletes_space
  end

  def deletes_space
    @cards.reject!{|x|x=="\n"}
    turn_into_hash
  end

  def turn_into_hash
    @cards=Hash[*cards]
    print_definition
  end

  def pick_card
    @cards.keys.sample
  end

  def pick_new_card
    pick_card
    print_definition
  end

  def print_definition
    definition = pick_card
    puts "Definition:\n#{definition}"
    user_input
    compare
  end

  def user_input
    gets.chomp
  end

  def compare
    if user_input == @cards[pick_card]
      output_correct
      pick_new_card
    elsif user_input == 'exit'
      puts "Quitter."
    else
      output_incorrect
      user_input
    end
  end

  def output_correct
    puts "Wow you must be some kind of genius...Next question!"
  end

  def output_incorrect
    puts "You suck! If this were actual Jeopardy Trebeck would have laughed you out of town`"
  end
end

Deck.new
