class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/artcles/#{comment.artcle.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, artcle_id: params[:artcle_id])
  end
end
