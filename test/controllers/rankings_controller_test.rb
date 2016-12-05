require 'test_helper'

class RankingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ranking = rankings(:one)
  end

  test "should get index" do
    get rankings_url, as: :json
    assert_response :success
  end

  test "should create ranking" do
    assert_difference('Ranking.count') do
      post rankings_url, params: { ranking: { player: @ranking.player, team: @ranking.team } }, as: :json
    end

    assert_response 201
  end

  test "should show ranking" do
    get ranking_url(@ranking), as: :json
    assert_response :success
  end

  test "should update ranking" do
    patch ranking_url(@ranking), params: { ranking: { player: @ranking.player, team: @ranking.team } }, as: :json
    assert_response 200
  end

  test "should destroy ranking" do
    assert_difference('Ranking.count', -1) do
      delete ranking_url(@ranking), as: :json
    end

    assert_response 204
  end
end
