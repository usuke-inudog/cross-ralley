class UserstatusesController < ApplicationController
  before_action :set_matching, only: [:new]
  before_action :set_opponent, only: [:new]
  before_action :set_profile,  only: [:new]


  def new
    @userstatus = Userstatus.new
    @@evaluated_user_id = @opponent.id
    @@matching_id = @matching.id
  end

  def create
    @userstatus = Userstatus.create(userstatus_params)
    if @userstatus.save
      completed_rating
      redirect_to user_schedules_path(current_user.id)
    else
      redirect_to root_path
    end
  end
  
  private
  def set_matching
    @matching = Matching.find_by(id: params[:format])
  end

  def set_opponent
    if current_user.id == @matching.host_user_id
      @opponent = User.find_by(id: @matching.guest_user.id)
    else
      @opponent = User.find_by(id: @matching.host_user_id)
    end
  end
  
  def set_profile
    @profile = Profile.find_by(user_id: @opponent.id)
  end

  def userstatus_params
    params.require(:userstatus).permit(:footwork, :stamina, :service, :return, :volley, :forehand, :backhand, :mental).merge(matching_id: @@matching_id,evaluated_user_id: @@evaluated_user_id, evaluate_user_id: current_user.id)
  end

  def completed_rating
    @matching = Matching.find_by(id: @@matching_id)
    @matching.update(status: "完了")
  end
end
