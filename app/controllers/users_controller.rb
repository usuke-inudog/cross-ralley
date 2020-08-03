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
    @user_status = Userstatus.find_by(user_id: current_user.id)
    @footwork = @user_status.footwork
    @stamina = @user_status.stamina
    @service = @user_status.service
    @return = @user_status.return
    @volley = @user_status.volley
    @forehand = @user_status.forehand
    @backhand = @user_status.backhand
    @mental = @user_status.mental
  end
end
