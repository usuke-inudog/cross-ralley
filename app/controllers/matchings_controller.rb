class MatchingsController < ApplicationController
  before_action :set_opponent, only: [:new]
  before_action :set_profile, only: [:new]
  before_action :set_matching_for_create, only: :update
  before_action :set_match, only: :destroy

  def new
    @matching = Matching.new
    @@opponent = @opponent
  end

  def create
    @matching = Matching.new(matching_params)
    if @matching.save
      redirect_to user_path(current_user.id)
    else
      redirect_to groups_path
    end
  end
  
  def update
    @matching.update(status: "承認済")
    redirect_to user_schedules_path(current_user.id)
  end

  def destroy
    @matching.delete
    redirect_to user_schedules_path(current_user.id)
  end

  private

  def set_opponent
    @opponent = User.find_by(id: params[:format])
  end
  
  def set_profile
    @profile = Profile.find_by(user_id: @opponent.id)
  end

  def set_match
    @matching = Matching.find(params[:id])
  end

  def matching_params
    params.require(:matching).permit(:match_type, :scheduled_date, :scheduled_time, :place, :response_deadline).merge(host_user_id: current_user.id, guest_user_id: @@opponent.id, status: "申込中")
  end

  def set_matching_for_create
    @matching = Matching.find(params[:format])
  end
end
