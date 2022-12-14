class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    logger.debug @tweets.count
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    user = User.find_by(uid: current_user)
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
