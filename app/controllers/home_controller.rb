class HomeController < ApplicationController
  def index
      @variable = params[:variable]
      @posts = Post.all
      @posts_count = Post.count
  end

  def find
      title = params["title"]
      @post = Post.find_by_title title
  end
  def find2
      title = params[:id]
      @post = Post.find_by_title title
  end
end
