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
 game_hash.each_key do |team|
   game_hash[team][:players].each_entry do |stats|
    if stats[:player_name] == player 
      return stats[:points] 
   end 
  end 
 end 
end 

def num_points_scored(player)
  game_hash.each_key do |team|
    game_hash[team][:players].each_entry do |name|
    if name[:player_name] == player 
      return name[:points]
    end 
  end 
 end
end
  
def shoe_size(player)
  game_hash.each_key do |team|
    game_hash[team][:players].each_entry do |name|
    if name[:player_name] == player 
      return name[:shoe]
    end 
  end 
 end 
end
 
 def team_colors(team)
   game_hash.each_key do |city|
     if game_hash[city][:team_name] == team 
       return game_hash[city][:colors]
   end 
  end 
 end 
 
 def team_names 
   team_names = []
   team_names << game_hash[:home][:team_name]
   team_names << game_hash[:away][:team_name]
   team_names
 end 
 
 def player_numbers(team)
   array = []
   game_hash.each_key do |city|
     if game_hash[city][:team_name] == team 
       game_hash[city][:players].each_entry do |name|
         array.push(name[:number])
       end 
     end 
   end 
   return array 
 end 
 
def player_stats(player)
  game_hash.each_key do |team| 
    game_hash[team][:players].each_entry do |stats|
      if stats[:player_name] == player 
        return stats 
      end 
    end 
  end 
end 

def find_player_with_longest_shoe 
  largest_shoe_size = 0 
  player_with_largest_shoe = nil 
  game_hash.each do |city, data|
    data[:players].each_entry do |name|
      if name[:shoe] > largest_shoe_size
        largest_shoe_size = name[:shoe]
        player_with_largest_shoe = name
      end 
    end 
  end 
  player_with_largest_shoe 
end 

def big_shoe_rebounds 
  player_with_largest_shoe = find_player_with_longest_shoe()
  game_hash.each do |city, stats|
    stats[:players].each do |name|
      if name == player_with_largest_shoe
        return name[:rebounds]
      end 
    end 
  end 
end 

def most_points_scored 
  most_points = 0 
  player_with_most_points = nil 
  game_hash.each do |city, data|
    data[:players].each_entry do |name|
      if name[:points] > most_points
        most_points = name[:points]
        player_with_most_points = name[:player_name]
      end 
    end 
  end 
  player_with_most_points
end 

def winning_team
  home_team_points = 0 
  away_team_points = 0
  game_hash.each do |city, team|
    if city == :home 
      team.each do |att, data| 
        if att == :players 
          data.each do |player, stats|
            home_team_points += stats[:points]
          end 
        end 
      end 
    else team.each do |player, stats|
      away_team_points += stats[:points]
    end 
  end 
end


 if home_team_points > away_team_points 
   return game_hash[:home][:team_name]
 else 
   return game_hash[:away][:team_name] 
 end 
end 
binding.pry 
def player_with_longest_name
  longest_name = 0 
  player_with_longest = nil  
  game_hash.each do |city, data|
    data[:players].each_entry do |name|
      if name[:player_name].length.to_i > longest_name
        longest_name = name[:playaer_name]
        player_with_longest = name[:player_name]
      end 
    end 
  end 
  player_with_longest 
end 
