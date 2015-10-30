

class Deck
  attr_accessor  :cards

  def initialize(args = {})

    @cards = []
  end

  def load_txt_file
     @cards = File.open('definitions.txt').readlines

  end

  def deletes_space
    @cards.reject!{|x|x=="\n"}
  end

  def turn_into_hash
    @cards=Hash[*cards]
  end

  def pick_card

    sample = @cards.keys.sample
    @cards.select{ |k,v| k==sample }
  end



  def print_definition
  definition = pick_card.each_key {|def| puts key}
  #user_input
  end

  def user_input
  input = ""
  definition #maybe I should take this out
  input = gets.chomp
  end

end




