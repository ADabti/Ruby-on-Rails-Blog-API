class PostsController < ApplicationController
    before_action :authenticate, only: [:create]
  
    # GET /posts
    def index
      @posts = Post.all
      render json: @posts
    end
  
    # GET /posts/:id
    def show
      @post = Post.find(params[:id])
      render json: @post
    end
  
    # POST /posts
    def create
        @post = Post.new(post_params)
        if @post.save
          render json: @post, status: :created
        else
          Rails.logger.debug @post.errors.full_messages.join(", ")
          render json: @post.errors, status: :unprocessable_entity
        end
      end
    private
  
    # Strong parameters
    def post_params
      params.require(:post).permit(:title, :content, :user_id)
    end
  
    # Basic token-based authentication
    def authenticate
      token = request.headers['Authorization']
      unless token == 'your-secret-token'
        render json: { error: 'Unauthorized' }, status: :unauthorized
      end
    end
  end