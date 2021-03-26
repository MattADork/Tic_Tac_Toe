def prompt
  print "> "
end

def check_win(board)
  if board[10] == board[14] and board[10] == board[18]
    return true
  elsif board[10] == board[52] and board[10] == board[94]
    return true
  elsif board[10] == board[56] and board[10] == board[102]
    return true
  elsif board[14] == board[56] and board[14] == board[98]
    return true
  elsif board[18] == board[60] and board[18] == board[102]
    return true
  elsif board[18] == board[56] and board[18] == board[94]
    return true
  elsif board[52] == board[56] and board[52] == board[60]
    return true
  elsif board[94] == board[98] and board[94] == board[102]
    return true
  else
    return false
  end
end

def game_won(board)
  if check_win(board) == true
    puts "You won the game!"
    puts "Play again? (y/n)"
    answer = gets.chomp.downcase
    if answer == "y"
      return game(board)
    end
  else
    exit
  end
end