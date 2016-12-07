require 'test_helper'

class SitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sit = sits(:one)
  end

  test "should get index" do
    get sits_url, as: :json
    assert_response :success
  end

  test "should create sit" do
    assert_difference('Sit.count') do
      post sits_url, params: { sit: { player: @sit.player, sit_em: @sit.sit_em } }, as: :json
    end

    assert_response 201
  end

  test "should show sit" do
    get sit_url(@sit), as: :json
    assert_response :success
  end

  test "should update sit" do
    patch sit_url(@sit), params: { sit: { player: @sit.player, sit_em: @sit.sit_em } }, as: :json
    assert_response 200
  end

  test "should destroy sit" do
    assert_difference('Sit.count', -1) do
      delete sit_url(@sit), as: :json
    end

    assert_response 204
  end
end
