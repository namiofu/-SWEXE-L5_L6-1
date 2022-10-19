class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    logger.debug @tweets.count
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    id = User.find_by(uid: session[:uid])
    tweet = Tweet.new(message: params[:tweet][:message], user_id: user.id)
    tweet.save
    redirect_to tweets_path #"/**"
  end
  
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to tweets_path
  end
end
