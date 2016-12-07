require 'test_helper'

class PlayerRankingsQbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_rankings_qb = player_rankings_qbs(:one)
  end

  test "should get index" do
    get player_rankings_qbs_url, as: :json
    assert_response :success
  end

  test "should create player_rankings_qb" do
    assert_difference('PlayerRankingsQb.count') do
      post player_rankings_qbs_url, params: { player_rankings_qb: { name: @player_rankings_qb.name, remaining_schedule: @player_rankings_qb.remaining_schedule } }, as: :json
    end

    assert_response 201
  end

  test "should show player_rankings_qb" do
    get player_rankings_qb_url(@player_rankings_qb), as: :json
    assert_response :success
  end

  test "should update player_rankings_qb" do
    patch player_rankings_qb_url(@player_rankings_qb), params: { player_rankings_qb: { name: @player_rankings_qb.name, remaining_schedule: @player_rankings_qb.remaining_schedule } }, as: :json
    assert_response 200
  end

  test "should destroy player_rankings_qb" do
    assert_difference('PlayerRankingsQb.count', -1) do
      delete player_rankings_qb_url(@player_rankings_qb), as: :json
    end

    assert_response 204
  end
end
