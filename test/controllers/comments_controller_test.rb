require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
    test "should create comment" do
        assert_difference('Comment.count') do
          post comments_url, params: { comment: { body: @comment.body, commenter: @comment.commenter } }
        end
    end
end
