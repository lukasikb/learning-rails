require "test_helper"

class ArticleTest < ActiveSupport::TestCase
    setup do
        @art = articles(:one)
    end

    test "checking validation" do
        assert Article.new(title: @art.title, description: @art.description).valid?

    end


end