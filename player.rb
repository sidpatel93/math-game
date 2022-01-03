class Player

  attr_reader :score
  attr_accessor :name, :lives

  # Class Variable 
  @@count = 0

  def initialize
    @@count += 1
    puts "Enter a name for Player #{@@count}"
    @score = 0
    @lives = 3
    @name = $stdin.gets.chomp
    puts "#{@name} has #{@lives} lives with a score of #{@score}"
  end

  def lose
    @lives -= 1
  end

  def right
    @score += 1
  end
end