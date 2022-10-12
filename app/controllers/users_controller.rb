class UsersController < ApplicationController
  def index
    @users = User.all
    logger.debug @users.count
  end
  
  def new
    @user = User.new
  end
  
  def create
    @tweet = Tweet.new(uid: params[:user][:uid], pass: params[:user][:pass])
    tweet.save
    redirect_to root_path #"/**"
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to root_path
  end
end
