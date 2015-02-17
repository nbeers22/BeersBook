class HomeController < ApplicationController
  def index
  	@posts = Post.all
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def destroy
  
  end
end
