class RankingsController < ApplicationController
  before_action :user_ranking, only: :index
  
  def index
  end


  private
  def user_ranking
    @footwork = Userstatus.all.order('footwork DESC').first(5)
    @stamina = Userstatus.all.order('stamina DESC').first(5)
    @serivce = Userstatus.all.order('service DESC').first(5)
    @receive = Userstatus.all.order('receive DESC').first(5)
    @volley = Userstatus.all.order('volley DESC').first(5)
    @forehand = Userstatus.all.order('forehand DESC').first(5)
    @backhand = Userstatus.all.order('backhand DESC').first(5)
    @mental = Userstatus.all.order('mental DESC').first(5)
  end
end
