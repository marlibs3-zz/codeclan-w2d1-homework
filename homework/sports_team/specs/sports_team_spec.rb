require ('minitest/autorun')
require_relative '../sports_team.rb'

class TestTeams < MiniTest::Test

  def test_return_team_name
    team = Team.new("Barcelona F.C.", ["Leo Messi", "Andres Iniesta", "Gerard Pique", "Sergi Roberto"], "Ernesto Valverde")
    assert_equal("Barcelona F.C.", team.team_name())
  end

  def test_return_team_players
    team = Team.new("Barcelona F.C.", ["Leo Messi", "Andres Iniesta", "Gerard Pique", "Sergi Roberto"], "Ernesto Valverde")
    assert_equal(["Leo Messi", "Andres Iniesta", "Gerard Pique", "Sergi Roberto"], team.team_players())
  end

  def test_return_team_coach
    team = Team.new("Barcelona F.C.", ["Leo Messi", "Andres Iniesta", "Gerard Pique", "Sergi Roberto"], "Ernesto Valverde")
    assert_equal("Ernesto Valverde", team.team_coach())
  end

  def test_amend_coach_name
    team = Team.new("Barcelona F.C.", ["Leo Messi", "Andres Iniesta", "Gerard Pique", "Sergi Roberto"], "Ernesto Valverde")
    team.amend_coach_name("Ernesto V")
    assert_equal("Ernesto V", team.team_coach())
  end

  def test_add_new_player
    team = Team.new("Barcelona F.C.", ["Leo Messi", "Andres Iniesta", "Gerard Pique", "Sergi Roberto"], "Ernesto Valverde")
    team.add_new_player("Luis Suarez")
    assert_equal("Luis Suarez", team.team_players.last())
  end

end
