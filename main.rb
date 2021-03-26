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
  game_won(board)
  player_two_go(player_two, board)
  display_board(board)
  game_won(board)
  player_one_go(player_one, board)
  display_board(board)
  game_won(board)
  player_two_go(player_two, board)
  display_board(board)
  game_won(board)
  player_one_go(player_one, board)
  display_board(board)
  game_won(board)
  player_two_go(player_two, board)
  display_board(board)
  game_won(board)
  player_one_go(player_one, board)
  display_board(board)
  game_won(board)
  player_two_go(player_two, board)
  display_board(board)
  game_won(board)
  player_one_go(player_one, board)
  display_board(board)
  game_won(board)
  player_two_go(player_two, board)
  display_board(board)
  game_won(board)
end

game(board)