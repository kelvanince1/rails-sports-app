require 'test_helper'

class StartsitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @startsit = startsits(:one)
  end

  test "should get index" do
    get startsits_url, as: :json
    assert_response :success
  end

  test "should create startsit" do
    assert_difference('Startsit.count') do
      post startsits_url, params: { startsit: { player: @startsit.player, team: @startsit.team } }, as: :json
    end

    assert_response 201
  end

  test "should show startsit" do
    get startsit_url(@startsit), as: :json
    assert_response :success
  end

  test "should update startsit" do
    patch startsit_url(@startsit), params: { startsit: { player: @startsit.player, team: @startsit.team } }, as: :json
    assert_response 200
  end

  test "should destroy startsit" do
    assert_difference('Startsit.count', -1) do
      delete startsit_url(@startsit), as: :json
    end

    assert_response 204
  end
end
