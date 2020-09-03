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
def num_points_scored (player)
  avg = 0
  game_hash.each do |teams, team_values|
    team_index = 0
    while team_index < team_values[:players].length
      if player == team_values[:players][team_index][:player_name]
        avg = team_values[:players][team_index][:points]
      end
      team_index += 1
    end
  end
  avg
end

def shoe_size (player_size)
  avg = 0
  game_hash.each do |teams, team_values|
    team_index = 0
    while team_index < team_values[:players].length
      if player_size == team_values[:players][team_index][:player_name]
        avg = team_values[:players][team_index][:shoe]
      end
      team_index += 1
    end
  end
  avg
end

def team_colors (team)
  new_array = []
    game_hash.each do |key, value|
      if team == value[:team_name]
        new_array = value[:colors]
      end
    end
    new_array
end

def team_names ()
  team_array = []
  game_hash.each do |key, value|
    team_array.push(value[:team_name])
  end
  team_array
end

def player_numbers (team_name)
  number_array = []
  game_hash.each do |key, value|
    if team_name == value[:team_name]
    i = 0
      while i < value[:players].length
        number_array << value[:players][i][:number]
        i += 1
      end
    end
  end
  number_array
end

def player_stats (player)
  stats = nil
  game_hash.each do |key, value|
      i = 0
      while i < value[:players].length
        if player == value[:players][i][:player_name]
          stats = value[:players][i]
        end
        i += 1
      end
    end
  stats
end

def big_shoe_rebounds
  rebound = 0
  shoe_size = 0
  game_hash.each do |key, value|
    i = 0
    while i < value[:players].length
      if shoe_size < value[:players][i][:shoe]
        shoe_size = value[:players][i][:shoe]
        rebound = value[:players][i][:rebounds]
      end
      i += 1
    end
  end
  rebound
end
