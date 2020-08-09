class EvaluationHistoriesController < ApplicationController
  before_action :set_matching, only: [:new]
  before_action :set_opponent, only: [:new]
  before_action :set_profile,  only: [:new]


  def new
    @evaluation_history = EvaluationHistory.new
    @@evaluated_user_id = @opponent.id
    @@matching_id = @matching.id
  end

  def create
    @evaluation_history = EvaluationHistory.create(evaluation_history_params)
    if @evaluation_history.save
      completed_evaluation
      statuses_average
      update_status
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

  def evaluation_history_params
    params.require(:evaluation_history).permit(:footwork, :stamina, :service, :receive, :volley, :forehand, :backhand, :mental).merge(matching_id: @@matching_id,evaluated_user_id: @@evaluated_user_id, evaluate_user_id: current_user.id)
  end

  def completed_evaluation
    matching = Matching.find_by(id: @@matching_id)
    if matching.host_user_id == current_user.id
      matching.update(completed_host_user_id: current_user.id)
    else
      matching.update(completed_guest_user_id: current_user.id)
    end
  end
  
  def statuses_average
    @user_statuses = EvaluationHistory.where(evaluated_user_id: @@evaluated_user_id)
    @footwork = []
    @stamina = []
    @service = []
    @receive = []
    @volley = []
    @forehand = []
    @backhand = []
    @mental = []
    @user_statuses.each do |status|
      @footwork << status.footwork
      @stamina << status.stamina
      @service << status.service
      @receive << status.receive
      @volley << status.volley
      @forehand << status.forehand
      @backhand << status.backhand
      @mental << status.mental
    end
    @footwork = @footwork.sum.fdiv(@footwork.length)
    @stamina = @stamina.sum.fdiv(@stamina.length)
    @service = @service.sum.fdiv(@service.length)
    @receive = @receive.sum.fdiv(@receive.length)
    @volley = @volley.sum.fdiv(@volley.length)
    @forehand = @forehand.sum.fdiv(@forehand.length)
    @backhand = @backhand.sum.fdiv(@backhand.length)
    @mental = @mental.sum.fdiv(@mental.length)
  end

  def update_status
    @user_status = Userstatus.find_by(user_id: @@evaluated_user_id)
    if @user_status.present?
      @user_status.update(rate: 1500, footwork: @footwork, stamina: @stamina, service: @service, receive: @receive, volley: @volley, forehand: @forehand, backhand: @backhand, mental: @mental)
    else
      Userstatus.create(rate: 1500, footwork: @footwork, stamina: @stamina, service: @service, receive: @receive, volley: @volley, forehand: @forehand, backhand: @backhand, mental: @mental, user_id: @@evaluated_user_id)
    end
  end
end
