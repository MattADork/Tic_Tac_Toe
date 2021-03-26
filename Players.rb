class Players

  attr_accessor :name, :token

  def initialize(name, token)
    @name = name
    @token = token
  end

end

def get_player_one_name
  puts "What is the name of player one?"
  prompt
  name = gets.chomp.capitalize
  return name
end

def get_player_two_name(player_one_name)
  puts "What is the name of player two?"
  prompt
  name = gets.chomp.capitalize
  if name == player_one_name
    puts "Sorry... that name is already taken."
    return get_player_two_name(player_one_name)
  end
  return name
end

def get_token_one
  puts
  puts "What character would you like to represent you, player one?"
  prompt
  token = gets.chomp
  unless token.length == 1
    puts "Sorry, your token can only be one character"
    return get_token_one
  end
  return token
end

def get_token_two(token_one)
  puts
  puts "What character would you like to represent you, player two?"
  prompt
  token = gets.chomp
  unless token.length == 1
    puts "Sorry, your token can only be one character"
    return get_token_two
  end
  if token == token_one
    puts "Sorry... That token is already taken"
    return get_token_two(token_one)
  end
  return token
end