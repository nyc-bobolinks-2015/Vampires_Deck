
class Deck
  def print_definition
    puts "Definition:\n" + pick_card.definition
    user_input
  end

  def user_input
    input = gets.chomp
    compare(input)
  end

  def compare(input)
    if input == pick_card.question
      output_correct
      pick_card
    elsif input == 'exit'
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

