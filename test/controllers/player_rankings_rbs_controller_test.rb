require 'test_helper'

class PlayerRankingsRbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_rankings_rb = player_rankings_rbs(:one)
  end

  test "should get index" do
    get player_rankings_rbs_url, as: :json
    assert_response :success
  end

  test "should create player_rankings_rb" do
    assert_difference('PlayerRankingsRb.count') do
      post player_rankings_rbs_url, params: { player_rankings_rb: { name: @player_rankings_rb.name, remaining_schedule: @player_rankings_rb.remaining_schedule } }, as: :json
    end

    assert_response 201
  end

  test "should show player_rankings_rb" do
    get player_rankings_rb_url(@player_rankings_rb), as: :json
    assert_response :success
  end

  test "should update player_rankings_rb" do
    patch player_rankings_rb_url(@player_rankings_rb), params: { player_rankings_rb: { name: @player_rankings_rb.name, remaining_schedule: @player_rankings_rb.remaining_schedule } }, as: :json
    assert_response 200
  end

  test "should destroy player_rankings_rb" do
    assert_difference('PlayerRankingsRb.count', -1) do
      delete player_rankings_rb_url(@player_rankings_rb), as: :json
    end

    assert_response 204
  end
end
