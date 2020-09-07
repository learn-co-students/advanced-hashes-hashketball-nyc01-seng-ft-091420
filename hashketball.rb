require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",      # 0
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",       # 1
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",        # 2
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",      # 3
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",        # 4
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",        # 0
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",    # 1
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",       # 2
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",         # 3
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",      # 4
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Build a method, num_points_scored that takes in an argument of a player's name and 
# returns the number of points scored for that player.

def num_points_scored(player_name)

  game_hash.each do |location, team_data|
    
    team_data[:players].each do |player|
      
      return player[:points] if player[:player_name] == player_name 
      
    end
    
  end
  
end

# Build a method, shoe_size, that takes in an argument of a player's name and returns the shoe size for that player.

def shoe_size(player_name)
  
  game_hash.each do |location, team_data|
    
    team_data[:players].each do |player|
      
      return player[:shoe] if player[:player_name] == player_name 
      
    end
    
  end
  
end

# Build a method, team_colors, that takes in an argument of the team name and returns an Array of that team's colors.

def team_colors(team_name)
  
  game_hash.each do |location, team_data|
    
     return team_data[:colors] if game_hash[location][:team_name] == team_name
    
  end
  
end

# Build a method, team_names, that operates on the game Hash to return an Array of the team names.

def team_names
  
  array = []
  
  array << game_hash[:home][:team_name]
  array << game_hash[:away][:team_name]
  
  return array
  
end

# Build a method, player_numbers, that takes in an argument of a team name and 
# returns an Array of the jersey numbers for that team.

def player_numbers(team_name)
  
jersey_numbers = []

game_hash.each do |location, team_data|
    
    team_data[:players].each do |player|
      
      jersey_numbers << player[:number] if team_data[:team_name] == team_name
  
    end
  
  end

  return jersey_numbers
  
end

# Build a method, player_stats, that takes in an argument of a player's name and returns a hash of that player's stats.

def player_stats(player_name)
  
  game_hash.each do |location, team_data|
    
    team_data[:players].each do |player|
      
      return player if player[:player_name] == player_name 
      
    end
    
  end

end

# Build a method, big_shoe_rebounds, that will return the number of rebounds associated with the player that has the largest shoe size. Break this one down into steps:

# First, find the player with the largest shoe size
# Then, return that player's number of rebounds
# Remember to think about return values here.

def big_shoe_rebounds
  
  game_hash.each do |location, team_data|
    
    team_data[:players].each do |player|
      
      return player[:rebounds] if player[:shoe] >= 19 
      
    end
    
  end
  
end