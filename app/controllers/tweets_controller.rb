class TweetsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
    redirect_to tweets_path
  end

  private
  def tweet_params
    params.require(:tweet).permit(:text).merge(user_id: current_user.id)
  end

end