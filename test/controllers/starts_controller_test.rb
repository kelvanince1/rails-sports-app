require 'test_helper'

class StartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start = starts(:one)
  end

  test "should get index" do
    get starts_url, as: :json
    assert_response :success
  end

  test "should create start" do
    assert_difference('Start.count') do
      post starts_url, params: { start: { player: @start.player, start_em: @start.start_em } }, as: :json
    end

    assert_response 201
  end

  test "should show start" do
    get start_url(@start), as: :json
    assert_response :success
  end

  test "should update start" do
    patch start_url(@start), params: { start: { player: @start.player, start_em: @start.start_em } }, as: :json
    assert_response 200
  end

  test "should destroy start" do
    assert_difference('Start.count', -1) do
      delete start_url(@start), as: :json
    end

    assert_response 204
  end
end
