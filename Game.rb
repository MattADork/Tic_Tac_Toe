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
    return
  end
end

def player_one_go(player_one, board)
  puts "Where would you like to go, #{player_one.name}? [Pick 1-9]"
  play = gets.chomp.to_s
  if play == "1"
    if board[10] != "1"
      puts "Sorry, that spot is already taken."
      return player_one_go(player_one, board)
    end
    board[10] = player_one.token
  elsif play == "2"
    if board[14] != "2"
      puts "Sorry, that spot is already taken."
      return player_one_go(player_one, board)
    end
    board[14] = player_one.token
  elsif play == "3"
    if board[18] != "3"
      puts "Sorry, that spot is already taken."
      return player_one_go(player_one, board)
    end
    board[18] = player_one.token
  elsif play == "4"
    if board[52] != "4"
      puts "Sorry, that spot is already taken."
      return player_one_go(player_one, board)
    end
    board[52] = player_one.token   
  elsif play == "5"
    if board[56] != "5"
      puts "Sorry, that spot is already taken."
      return player_one_go(player_one, board)
    end
    board[56] = player_one.token
  elsif play == "6"
    if board[60] != "6"
      puts "Sorry, that spot is already taken."
      return player_one_go(player_one, board)
    end
    board[60] = player_one.token 
  elsif play == "7"
    if board[94] != "7"
      puts "Sorry, that spot is already taken."
      return player_one_go(player_one, board)
    end
    board[94] = player_one.token     
  elsif play == "8"
    if board[98] != "8"
      puts "Sorry, that spot is already taken."
      return player_one_go(player_one, board)
    end
    board[98] = player_one.token   
  elsif play == "9"
    if board[102] != "9"
      puts "Sorry, that spot is already taken."
      return player_one_go(player_one, board)
    end
    board[102] = player_one.token
  else
    puts "Invalid, please pick again"
    return player_one_go(player_one, board)
  end
end

def player_two_go(player_two, board)
  puts "Where would you like to go, #{player_two.name}? [Pick 1-9]"
  play = gets.chomp.to_s
  if play == "1"
    if board[10] != "1"
      puts "Sorry, that spot is already taken."
      return player_two_go(player_two, board)
    end
    board[10] = player_two.token
  elsif play == "2"
    if board[14] != "2"
      puts "Sorry, that spot is already taken."
      return player_two_go(player_two, board)
    end
    board[14] = player_two.token
  elsif play == "3"
    if board[18] != "3"
      puts "Sorry, that spot is already taken."
      return player_two_go(player_two, board)
    end
    board[18] = player_two.token
  elsif play == "4"
    if board[52] != "4"
      puts "Sorry, that spot is already taken."
      return player_two_go(player_two, board)
    end
    board[52] = player_two.token   
  elsif play == "5"
    if board[56] != "5"
      puts "Sorry, that spot is already taken."
      return player_two_go(player_two, board)
    end
    board[56] = player_two.token
  elsif play == "6"
    if board[60] != "6"
      puts "Sorry, that spot is already taken."
      return player_two_go(player_two, board)
    end
    board[60] = player_two.token 
  elsif play == "7"
    if board[94] != "7"
      puts "Sorry, that spot is already taken."
      return player_two_go(player_two, board)
    end
    board[94] = player_two.token     
  elsif play == "8"
    if board[98] != "8"
      puts "Sorry, that spot is already taken."
      return player_two_go(player_two, board)
    end
    board[98] = player_two.token   
  elsif play == "9"
    if board[102] != "9"
      puts "Sorry, that spot is already taken."
      return player_two_go(player_two, board)
    end
    board[102] = player_two.token
  else
    puts "Invalid, please pick again"
    return player_two_go(player_one, board)
  end
end