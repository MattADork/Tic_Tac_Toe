require_relative 'Board'
require_relative 'Players'

board = BOARD
game_won = false

puts
puts board
puts

def prompt
  print "> "
end

p1_name = get_player_one_name
t1_name = get_token_one
p2_name = get_player_two_name(p1_name)
t2_name = get_token_two(t1_name)

player_one = Players.new(p1_name, t1_name)
player_two = Players.new(p2_name, t2_name)

puts player_one.name + ": " + player_one.token
puts player_two.name + ": " + player_two.token

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

board[10] = player_one.token
board[14] = player_one.token
board[18] = player_one.token

puts
puts board
puts

game_won = check_win(board)
if game_won == true
  puts "You win!"
else
  puts "Not over yet..."
end