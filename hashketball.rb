# Write your code below game_hash

require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
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
          player_name: "Reggie Evans",
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
          player_name: "Brook Lopez",
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
          player_name: "Mason Plumlee",
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
          player_name: "Jason Terry",
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
          player_name: "Jeff Adrien",
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
          player_name: "Bismack Biyombo",
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
          player_name: "DeSagna Diop",
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
          player_name: "Ben Gordon",
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
          player_name: "Kemba Walker",
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

# Write code here


def num_points_scored(player)
  
  points_scored = 
  game_hash.each do |teams, teams_stats|
#teams = :home/away          #teams_stats = :teamname => , :colors =>  ,:players => 
  
    players_array = teams_stats[:players]
    players_array.each do |player_data|
      #player_data = key/value pairs of it's stats
      
      if player_data[:player_name] == player
        return points_score = player_data[:points]
      end
    end
  end
end


def shoe_size(player)
  shoe_size =
  
  game_hash.each do |team, teams_stats|
    player_array = teams_stats[:players]
    
    player_array.each do |player_data|
      if player_data[:player_name] == player
        return shoe_size = player_data[:shoe]
      end
    end
  end
end

def team_colors(team_name)
  #team_colors = []
  
  game_hash.each do |team, teams_stats|
    
    if teams_stats[:team_name] == team_name
      return teams_stats[:colors]
    end
  end
end

def team_names
  names_array = []
  
  game_hash.each do |team, teams_stats|
    team_name = teams_stats[:team_name]
    names_array.push(team_name)
  end
  return names_array
end


def player_numbers(team_name)
  jersey_numbers = []
  
  game_hash.each do |team, teams_stats|
    player_array = teams_stats[:players]

    player_array.each do |player_data|
      if teams_stats[:team_name] == team_name    
        jersey_numbers.push(player_data[:number])
      end
    end
  end
  return jersey_numbers
end


def player_stats(name)
  
  game_hash.each do |teams, teams_stats|
    player_array = teams_stats[:players]
    
    player_array.each do |player_data|
      if player_data[:player_name] == name
        return player_data
      end
    end
  end
end

def big_shoe_rebounds
  
  game_hash.each do |teams, teams_stats|
    
    player_array = teams_stats[:players]
    
    biggest_shoes = 0
    biggest_shoes_rebounds = 0
    
    player_array.each do |player_data|

      if biggest_shoes < player_data[:shoe]
        biggest_shoes = player_data[:shoe]
        biggest_shoes_rebounds = player_data[:rebounds]
      end
    end
    return biggest_shoes_rebounds
  end
  
end


