require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get comments_path
    assert_response :success
  end

  test "should get new" do
    get new_comment_path
    assert_response :success
  end

  test "should get create" do
    post comments_path, params: { comment: { body: "Test Comment" } }
    assert_redirected_to comments_path
    assert_equal "Comment was successfully created.", flash[:notice]
  end
end
