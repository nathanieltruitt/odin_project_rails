class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  # gets all records for Posts
  def index
    @posts = Post.all
  end

  # get specified post
  def show
  end

  # displays form for new Post
  def new
    @post = Post.new
  end

  # display form for editing a post
  def edit
  end

  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_url(@post), notice: 'A new post was created!' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to posts_url(@post), notice: 'A new post was created!' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to post_url, notice: 'The post was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end