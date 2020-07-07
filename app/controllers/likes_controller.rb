class LikesController < ApplicationController
  before_action :set_artcle

  def create
    @like = Like.create(user_id: current_user.id, artcle_id: @artcle.id)
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, artcle_id: @artcle.id)
    @like.destroy
  end

  private
  def set_artcle
    @artcle = Artcle.find(params[:artcle_id])
  end
end
