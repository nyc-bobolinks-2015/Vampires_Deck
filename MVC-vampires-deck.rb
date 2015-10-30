class Controller
  attr_reader :deck, :view
  def initialize
    @deck = Deck.new
    load_deck
    @view = View.new
    run
  end

  def load_deck
    #load file into array of hashes
    #iterate over array |hash|
      #deck.cards << Card.new(hash)
    #end
  end

  def run
    input = ""
    until input == "exit" || input == "quit"
      view.greeting
      input = view.user_input
      compare(input)
    end
    puts "Quitter."
  end

  def compare(input)
    if input == pick_card.question
      view.output_correct
      deck.pick_card
    else
      output_incorrect
      run
    end
  end


end

class View

  def user_input
    gets.chomp
  end

  def greeting
    "Welcome to Jeopardy-style flash cards. Start each answer with \"What is\" or \"Who is\". No question mark is needed."
  end

  def display(output)
    puts output
  end

  def output_correct
    puts "Wow you must be some kind of genius...Next question!"
  end

  def output_incorrect
    puts "You suck! If this were actual Jeopardy Trebeck would have laughed you out of town. Try again"
  end

end
