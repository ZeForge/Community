require 'test_helper'

class MyskillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myskill = myskills(:one)
  end

  test "should get index" do
    get myskills_url
    assert_response :success
  end

  test "should get new" do
    get new_myskill_url
    assert_response :success
  end

  test "should create myskill" do
    assert_difference('Myskill.count') do
      post myskills_url, params: { myskill: { skill_id: @myskill.skill_id, user_id: @myskill.user_id } }
    end

    assert_redirected_to myskill_url(Myskill.last)
  end

  test "should show myskill" do
    get myskill_url(@myskill)
    assert_response :success
  end

  test "should get edit" do
    get edit_myskill_url(@myskill)
    assert_response :success
  end

  test "should update myskill" do
    patch myskill_url(@myskill), params: { myskill: { skill_id: @myskill.skill_id, user_id: @myskill.user_id } }
    assert_redirected_to myskill_url(@myskill)
  end

  test "should destroy myskill" do
    assert_difference('Myskill.count', -1) do
      delete myskill_url(@myskill)
    end

    assert_redirected_to myskills_url
  end
end
