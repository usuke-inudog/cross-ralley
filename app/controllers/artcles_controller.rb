class ArtclesController < ApplicationController
  before_action :set_artcle, only: [:edit, :show]
  before_action :artcle_all, only: [:index]
  before_action :artcles_favo, only: [:index]

  def index
  end

  def new
    @artcle = Artcle.new
  end

  def create
    Artcle.create(artcle_params)
    redirect_to artcles_path
  end

  def show
    @comment = Comment.new
    @comments = @artcle.comments.includes(:user)
  end

  def search
    @artcles = Artcle.search(params[:keyword]).order("created_at DESC").page(params[:page]).per(4)
  end

  def edit
  end

  def destroy
    artcle = Artcle.find(params[:id])
    artcle.destroy
    redirect_to artcles_path
  end

  def update
    artcle = Artcle.find(params[:id])
    artcle.update(artcle_params)
    redirect_to artcle_path(artcle.id)
  end

  private
  def artcle_params
    params.require(:artcle).permit(:image,:text,:title,:video).merge(user_id: current_user.id)
  end

  def set_artcle
    @artcle = Artcle.find(params[:id])
  end

  def artcle_all
    @artcles = Artcle.all.order("created_at DESC").page(params[:page]).per(4)
  end

  def artcles_favo
    @favo_artcle = Artcle.find(Favorite.group(:artcle_id).order('count(artcle_id) desc').limit(10).pluck(:artcle_id))
  end
end
