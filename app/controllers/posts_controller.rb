class PostsController < ApplicationController
	respond_to :html, :js

	def index

	end

	def create
		@post = Post.create(post_params)
	end

	def new
		@post = Post.new
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post.update_attributes(post_params)
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
	    respond_to do |format|
	      format.html
	      format.js
	    end
	end

	private

	def post_params
		params.require(:post).permit(:content)
	end
end
