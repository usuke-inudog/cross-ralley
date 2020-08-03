class FavoritesController < ApplicationController
  before_action :set_artcle, only: [:create, :destroy]

  def create
    favorite = current_user.favorites.build(artcle_id: params[:artcle_id])
    favorite.save
  end

  def destroy
    favorite = Favorite.find_by(artcle_id: params[:artcle_id], user_id: current_user.id)
    favorite.destroy
  end

  private
  def set_artcle
    @artcle = Artcle.find(params[:artcle_id])
  end
end
