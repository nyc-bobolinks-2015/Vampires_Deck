require 'csv'

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

end





# test= Deck.new
#  test.load_txt_file
#  test.deletes_space
#   test.turn_into_hash
#   p test.pick_card
#   test.cards
