class MatchingController < ApplicationController
  before_action :set_user, only: [:new]
  before_action :set_profile, only: [:new]

  def new
  end

  def create
  end
  

  private

  def set_user
    @user = User.find_by(id: params[:format])
  end
  def set_profile
    @profile = Profile.find_by(user_id: @user.id)
  end
end
