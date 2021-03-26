require_relative 'Board'
require_relative 'Players'

board = BOARD

puts
puts board
puts

def prompt
  print "> "
end

p1_name = get_player_one_name
t1_name = get_token_one
puts p1_name
puts p1_name.class
p2_name = get_player_two_name(p1_name)
t2_name = get_token_two(t1_name)

player_one = Players.new(p1_name, t1_name)
player_two = Players.new(p2_name, t2_name)

puts player_one.name
puts player_one.token
puts player_two.name
puts player_two.token
