class UserstatusesController < ApplicationController
  before_action :set_opponent, only: [:new]
  before_action :set_profile,  only: [:new]


  def new
    @userstatus = Userstatus.new
  end

  def create
  end
  
  private
  def set_opponent
    @opponent = User.find_by(id: params[:format])
  end
  
  def set_profile
    @profile = Profile.find_by(user_id: @opponent.id)
  end
end
