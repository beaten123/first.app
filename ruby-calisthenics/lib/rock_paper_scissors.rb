class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE
    if player1[1] == 'P' && player2[1] == 'P'
      return player1
    elsif
    player1[1] == 'P' && player2[1] == 'R'
      return player1
    elsif
    player1[1] == 'P' && player2[1] == 'S'
      return player2
    elsif
    player1[1] == 'R' && player2[1] == 'R'
      return player1
    elsif
    player1[1] == 'R' && player2[1] == 'S'
      return player1
    elsif
    player1[1] == 'R' && player2[1] == 'P'
      return player2
    elsif
    player1[1] == 'S' && player2[1] == 'S'
      return player1
    elsif
    player1[1] == 'S' && player2[1] == 'P'
      return player1
    elsif
    player1[1] == 'S' && player2[1] == 'R'
      return player2
    else raise NoSuchStrategyError, "Strategy must be one of R,P,S"
    end    
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
    if tournament[0][0].is_a? String
      return winner(tournament[0], tournament[1])
    end
      return winner(tournament_winner(tournament[0]), tournament_winner(tournament[1]))
  end

end
