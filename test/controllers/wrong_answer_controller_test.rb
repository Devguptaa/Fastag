require "test_helper"

class WrongAnswerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wrong_answer_index_url
    assert_response :success
  end
end
