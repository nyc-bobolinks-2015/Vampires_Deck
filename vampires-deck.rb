class Deck


  def compare
    if user_input == pick_card.question
      output_correct
      pick_card
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
    puts "You suck! If this were actual Jeopardy Trebeck would have laughed you out of town. Try again"
  end
end

class Card
  attr_reader :definition, :question

  def initialize(args)
    @definition = args[:defintion]
    @question = args[:question]
  end

end
