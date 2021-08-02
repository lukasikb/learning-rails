require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should get show" do
    get article_path(:id => @article.id )
    assert_response :success
  end

  test "should get edit" do
    get edit_article_path(:id => @article.id)
    assert_response :success
  end


  test "should create article" do
    assert_difference("Article.count") do
      post articles_url, params: { article: { description: "Rails is awesome!", title: "Hello Rails" } }
    end
  
    assert_redirected_to article_path(Article.last)
  end

  test "should save article" do
    assert Article.new(title: @article.title, description: @article.description).save
  end


  test "should delete article" do
    assert_difference("Article.count", -1) do
      delete article_path(@article)
    end
    assert_redirected_to root_path
  end


  test "should update article" do
    patch article_path(@article), params: { article: { description: "Updated", title: "Hello Rails" } }
    assert_redirected_to @article

    @article.reload
    assert_equal "Updated", @article.description
    end

end
