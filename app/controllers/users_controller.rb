class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  before_action :set_profile, only: [:show]
  before_action :set_status, only: [:show]
  before_action :search_unapproved_match, only: [:show]
  
  def show
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def set_profile
    @profile = Profile.find_by(user_id: current_user.id)
  end

  def search_unapproved_match
    @unapproved = Matching.where(guest_user_id: current_user.id).where(status: "申込中").where('scheduled_date>= ?', Date.today)
  end

  def set_status
    @footwork = []
    @stamina = []
    @service = []
    @return = []
    @volley = []
    @forehand = []
    @backhand = []
    @mental = []
    @statuses = Userstatus.where(evaluated_user_id: current_user.id)
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
end
