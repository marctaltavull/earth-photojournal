class PostsController < ApplicationController
  
  def index
    @all_posts = Post.all
    @mission_list = Post.select(:mission).distinct
  end

  def show
    @post = Post.find(params[:id])
  end

  def filter
    @filtered_posts = []
    (Post.all).each do |post|
      if post.mission.strip == params[:mission].strip
        @filtered_posts.append(post)
      end
    end
  end

end
