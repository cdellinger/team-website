require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post :create, game: { directions: @game.directions, end_of_game_snack: @game.end_of_game_snack, halftime_snack: @game.halftime_snack, is_home_game: @game.is_home_game, kickoff: @game.kickoff, location: @game.location, map_url: @game.map_url, opponent: @game.opponent, opponent_score: @game.opponent_score, our_score: @game.our_score, team_id: @game.team_id, team_url: @game.team_url }
    end

    assert_redirected_to game_path(assigns(:game))
  end

  test "should show game" do
    get :show, id: @game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game
    assert_response :success
  end

  test "should update game" do
    patch :update, id: @game, game: { directions: @game.directions, end_of_game_snack: @game.end_of_game_snack, halftime_snack: @game.halftime_snack, is_home_game: @game.is_home_game, kickoff: @game.kickoff, location: @game.location, map_url: @game.map_url, opponent: @game.opponent, opponent_score: @game.opponent_score, our_score: @game.our_score, team_id: @game.team_id, team_url: @game.team_url }
    assert_redirected_to game_path(assigns(:game))
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete :destroy, id: @game
    end

    assert_redirected_to games_path
  end
end
