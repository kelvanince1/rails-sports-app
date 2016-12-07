require 'test_helper'

class PlayerRankingsTesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_rankings_te = player_rankings_tes(:one)
  end

  test "should get index" do
    get player_rankings_tes_url, as: :json
    assert_response :success
  end

  test "should create player_rankings_te" do
    assert_difference('PlayerRankingsTe.count') do
      post player_rankings_tes_url, params: { player_rankings_te: { name: @player_rankings_te.name, remaining_schedule: @player_rankings_te.remaining_schedule } }, as: :json
    end

    assert_response 201
  end

  test "should show player_rankings_te" do
    get player_rankings_te_url(@player_rankings_te), as: :json
    assert_response :success
  end

  test "should update player_rankings_te" do
    patch player_rankings_te_url(@player_rankings_te), params: { player_rankings_te: { name: @player_rankings_te.name, remaining_schedule: @player_rankings_te.remaining_schedule } }, as: :json
    assert_response 200
  end

  test "should destroy player_rankings_te" do
    assert_difference('PlayerRankingsTe.count', -1) do
      delete player_rankings_te_url(@player_rankings_te), as: :json
    end

    assert_response 204
  end
end
