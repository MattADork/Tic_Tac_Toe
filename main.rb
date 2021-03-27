require_relative 'Game'
require_relative 'Board'
require_relative 'Players'

board = BOARD

def fresh_board
  return "          1 | 2 | 3 
         ---+---+---
          4 | 5 | 6 
         ---+---+---
          7 | 8 | 9 "
end


def game(board)
  board = fresh_board
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
  game_won(board, player_one, player_two)
  player_two_go(player_two, board)
  display_board(board)
  game_won(board, player_one, player_two)
  player_one_go(player_one, board)
  display_board(board)
  game_won(board, player_one, player_two)
  player_two_go(player_two, board)
  display_board(board)
  game_won(board, player_one, player_two)
  player_one_go(player_one, board)
  display_board(board)
  game_won(board, player_one, player_two)
  player_two_go(player_two, board)
  display_board(board)
  game_won(board, player_one, player_two)
  player_one_go(player_one, board)
  display_board(board)
  game_won(board, player_one, player_two)
  player_two_go(player_two, board)
  display_board(board)
  game_won(board, player_one, player_two)
  player_one_go(player_one, board)
  display_board(board)
  game_won(board, player_one, player_two)
  draw(board, player_one, player_two)
end

def draw(board, player_one, player_two)
  puts "It's a draw! Play Again? (y/n)"
  prompt
  again = gets.chomp.downcase
  if again == "y"
    return new_game(board, player_one, player_two)
  elsif again == "n"
    exit
  else
    return draw(board, player_one, player_two)
  end
end

def same_names
  puts "Same names and tokens? (y/n)"
  prompt
  same = gets.chomp.downcase
  if same != "n" and same != "y"
    return same_names
  end
  return same
end

def new_game(board, player_one, player_two)
  board = fresh_board
  display_board(board)

  same = same_names

  if same == "n" 
    p1_name = get_player_one_name
    t1_name = get_token_one
    p2_name = get_player_two_name(p1_name)
    t2_name = get_token_two(t1_name)
    player_one = Players.new(p1_name, t1_name)
    player_two = Players.new(p2_name, t2_name)
  end

  display_board(board)
  player_one_go(player_one, board)
  display_board(board)
  game_won(board, player_one, player_two)
  player_two_go(player_two, board)
  display_board(board)
  game_won(board, player_one, player_two)
  player_one_go(player_one, board)
  display_board(board)
  game_won(board, player_one, player_two)
  player_two_go(player_two, board)
  display_board(board)
  game_won(board, player_one, player_two)
  player_one_go(player_one, board)
  display_board(board)
  game_won(board, player_one, player_two)
  player_two_go(player_two, board)
  display_board(board)
  game_won(board, player_one, player_two)
  player_one_go(player_one, board)
  display_board(board)
  game_won(board, player_one, player_two)
  player_two_go(player_two, board)
  display_board(board)
  game_won(board, player_one, player_two)
  player_one_go(player_one, board)
  display_board(board)
  game_won(board, player_one, player_two)
  draw(board, player_one, player_two)
end

game(board)