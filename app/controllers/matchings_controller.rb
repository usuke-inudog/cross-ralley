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
    @statuses = Userstatus.where(evaluated_user_id: current_user.id)
    if @statuses.length != 0
      @footwork = []
      @stamina = []
      @service = []
      @return = []
      @volley = []
      @forehand = []
      @backhand = []
      @mental = []
      @statuses.each do |status|
        @footwork << status.footwork
        @stamina << status.stamina
        @service << status.service
        @return << status.return
        @volley << status.volley
        @forehand << status.forehand
        @backhand << status.backhand
        @mental << status.mental
      end
      @footwork = @footwork.sum.fdiv(@footwork.length)
      @stamina = @stamina.sum.fdiv(@stamina.length)
      @service = @service.sum.fdiv(@service.length)
      @return = @return.sum.fdiv(@return.length)
      @volley = @volley.sum.fdiv(@volley.length)
      @forehand = @forehand.sum.fdiv(@forehand.length)
      @backhand = @backhand.sum.fdiv(@backhand.length)
      @mental = @mental.sum.fdiv(@mental.length)
    end
    # 相手のステータス
    @o_statuses = Userstatus.where(evaluated_user_id: @opponent.id)
    if @o_statuses.length != 0
      @o_footwork = []
      @o_stamina = []
      @o_service = []
      @o_return = []
      @o_volley = []
      @o_forehand = []
      @o_backhand = []
      @o_mental = []
      @o_statuses.each do |status|
        @o_footwork << status.footwork
        @o_stamina << status.stamina
        @o_service << status.service
        @o_return << status.return
        @o_volley << status.volley
        @o_forehand << status.forehand
        @o_backhand << status.backhand
        @o_mental << status.mental
      end
      @o_footwork = @o_footwork.sum.fdiv(@o_footwork.length)
      @o_stamina = @o_stamina.sum.fdiv(@o_stamina.length)
      @o_service = @o_service.sum.fdiv(@o_service.length)
      @o_return = @o_return.sum.fdiv(@o_return.length)
      @o_volley = @o_volley.sum.fdiv(@o_volley.length)
      @o_forehand = @o_forehand.sum.fdiv(@o_forehand.length)
      @o_backhand = @o_backhand.sum.fdiv(@o_backhand.length)
      @o_mental = @o_mental.sum.fdiv(@o_mental.length)
    end
  end

  def set_user
    @user = User.find(current_user.id)
  end
end
