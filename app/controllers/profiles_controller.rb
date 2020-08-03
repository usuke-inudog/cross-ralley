class ProfilesController < ApplicationController
  before_action :set_profile, only:  [:edit, :update]

  def show
  end

  def new
    if current_user.profile.present?
      @profile = current_user.profile
      redirect_to edit_profile_path(@profile.id)
    else
      @profile = Profile.new
    end
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to user_path(current_user.id)
    else
      flash.now[:alert] = "必須項目は全て入力してください"
      render :new
    end
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to user_path(current_user.id)
    else
      flash.now[:alert] = "必要事項は全て入力してください"
      render :edit
    end
  end

  private
  
  def profile_params
    params.require(:profile).permit(:image, :address, :age, :gender, :introduction).merge(user_id: current_user.id)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
