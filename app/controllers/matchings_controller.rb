class MatchingsController < ApplicationController
  before_action :set_opponent, only: [:new]
  before_action :set_profile, only: [:new]
  before_action :set_user, only: [:new]
  before_action :set_statuses, only: [:new]
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

  def set_statuses
    # 自分のステータス
    @user_status = Userstatus.find_by(user_id: current_user.id)
    if @user_status.present?
      @footwork = @user_status.footwork
      @stamina = @user_status.stamina
      @service = @user_status.service
      @receive = @user_status.receive
      @volley = @user_status.volley
      @forehand = @user_status.forehand
      @backhand = @user_status.backhand
      @mental = @user_status.mental
    end
    # 相手のステータス
    @o_user_status = Userstatus.find_by(user_id: @opponent.id)
    if @o_user_status.present?
      @o_footwork = @o_user_status.footwork
      @o_stamina = @o_user_status.stamina
      @o_service = @o_user_status.service
      @o_receive = @o_user_status.receive
      @o_volley = @o_user_status.volley
      @o_forehand = @o_user_status.forehand
      @o_backhand = @o_user_status.backhand
      @o_mental = @o_user_status.mental
    end
  end

  def set_user
    @user = User.find(current_user.id)
  end
end
