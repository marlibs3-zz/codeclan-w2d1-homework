class Team
  attr_accessor :team_name, :team_players, :team_coach, :team_points

  def initialize(input_team_name, input_team_players, input_team_coach)
    @team_name = input_team_name
    @team_players = input_team_players
    @team_coach = input_team_coach
    @team_points = 0
  end


  def return_team_name
    return @team_name
  end

  def return_team_players
    return @team_players
  end

  def return_team_coach
    return @team_coach
  end

  def amend_coach_name(new_coach_name)
    @team_coach = new_coach_name
  end

  def add_new_player(new_player)
    @team_players.push(new_player)
  end

  def check_if_player_in_array(team_player)
    @team_players.include?(team_player)
  end

  def add_points_to_team(game_status)
    if game_status == "win"
      @team_points += 3
    elsif game_status == "draw"
      @team_points += 1
    else
    end
  end

end
