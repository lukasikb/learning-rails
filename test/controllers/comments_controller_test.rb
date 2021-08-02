require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
    @comment = comments(:one)
  end

  test "should create comment" do
        assert_difference('Comment.count') do
          post  "/articles/#{@article.id}/comments", params: { comment: { body: @comment.body, commenter: @comment.commenter } }
        end
        assert_redirected_to article_path(@article)
    end


  test "should delete comment" do
        assert_difference('Comment.count', -1) do
          delete "/articles/#{@article.id}/comments/#{@comment.id}"
        end
        assert_redirected_to article_path(@article)
    end

end
