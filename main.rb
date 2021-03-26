require_relative 'Game'
require_relative 'Board'
require_relative 'Players'

board = BOARD

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
  else
    puts "Invalid, please pick again"
    return player_one_go(player_one, board)
  end
end

def game(board)
  display_board(board)

  p1_name = get_player_one_name
  t1_name = get_token_one
  p2_name = get_player_two_name(p1_name)
  t2_name = get_token_two(t1_name)
  player_one = Players.new(p1_name, t1_name)
  player_two = Players.new(p2_name, t2_name)

  display_board(board)
  player_one_go(player_one, board)
  display_board(board)

  game_won(board)
end

game(board)