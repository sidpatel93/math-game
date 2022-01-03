class Game

  def challenge(ans)
    ans == $stdin.gets.chomp.to_i
  end

  def new_turn
    return "----- NEW TURN -----"
  end

  def game_over (name, score)
    str = "#{name} wins with a score of #{score}\n----- GAME OVER -----\nGood Bye!"
  end

  def response(right)
    str = ''
    right ? str = "CORRECT" : str = "SORRY! WRONG ANSWER"
    return str
  end
end