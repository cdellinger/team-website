class WelcomeController < ApplicationController
	def index
    @posts = Post.all.order(posted_on: :desc)
  end
end
