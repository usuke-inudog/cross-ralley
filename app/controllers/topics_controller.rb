class TopicsController < ApplicationController
  def index
    @artcles = Artcle.all.order("created_at DESC")
  end
end
