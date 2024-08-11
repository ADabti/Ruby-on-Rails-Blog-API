require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
    setup do
        @post = posts(:one)
        @user = users(:one) # Reference the fixture user
      end
      
  test "should get index" do
    get posts_url, as: :json
    assert_response :success
  end

  test "should show post" do
    get post_url(@post), as: :json
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { title: "Test Post", content: "This is a test", user_id: @user.id } }, headers: { Authorization: 'your-secret-token' }, as: :json
    end
  
    assert_response :created
  end
end
