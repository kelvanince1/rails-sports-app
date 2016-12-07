require 'test_helper'

class PlayerRankingsWrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_rankings_wr = player_rankings_wrs(:one)
  end

  test "should get index" do
    get player_rankings_wrs_url, as: :json
    assert_response :success
  end

  test "should create player_rankings_wr" do
    assert_difference('PlayerRankingsWr.count') do
      post player_rankings_wrs_url, params: { player_rankings_wr: { name: @player_rankings_wr.name, remaining_schedule: @player_rankings_wr.remaining_schedule } }, as: :json
    end

    assert_response 201
  end

  test "should show player_rankings_wr" do
    get player_rankings_wr_url(@player_rankings_wr), as: :json
    assert_response :success
  end

  test "should update player_rankings_wr" do
    patch player_rankings_wr_url(@player_rankings_wr), params: { player_rankings_wr: { name: @player_rankings_wr.name, remaining_schedule: @player_rankings_wr.remaining_schedule } }, as: :json
    assert_response 200
  end

  test "should destroy player_rankings_wr" do
    assert_difference('PlayerRankingsWr.count', -1) do
      delete player_rankings_wr_url(@player_rankings_wr), as: :json
    end

    assert_response 204
  end
end
