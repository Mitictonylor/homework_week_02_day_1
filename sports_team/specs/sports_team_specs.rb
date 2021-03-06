require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportTeam < Minitest::Test
  def setup()
@sport_team= SportTeam.new("Milan",["Gigio Donnarumma","Alessio Romagnoli","Davide Calabria"],"Stefano Pioli")
  end

def test_get_team_name()
  assert_equal("Milan", @sport_team.name())
end

def test_get_team_players()
  assert_equal(["Gigio Donnarumma","Alessio Romagnoli","Davide Calabria"],@sport_team.players())
end

def test_get_team_coach()
  assert_equal("Stefano Pioli", @sport_team.coach())
end

def test_set_team_coach()
  @sport_team.coach ="Max Allegri"
  assert_equal("Max Allegri",@sport_team.coach())
end

def test_add_player()
  @sport_team.add_player("Theo Hernandez")
  assert_equal(["Gigio Donnarumma","Alessio Romagnoli","Davide Calabria", "Theo Hernandez"], @sport_team.players)
end

def test_find_player_true()
result =   @sport_team.find_team_player("Gigio Donnarumma")
  assert_equal(true, result)
end

def test_find_player_false()
  result = @sport_team.find_team_player("cavani")
  assert_equal(false,result)
end

def test_update_points()
  assert_equal(3,@sport_team.update_points("win") )
end


end
