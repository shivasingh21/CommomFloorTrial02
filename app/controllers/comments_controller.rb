class CommentsController < ApplicationController
  before_action :set_property
  def create
    @comment = @property.comments.new(comment_params)
    @comment.user = User.last
    @comment.save


    redirect_back(fallback_location: root_path)
  end
  private
  def comment_params
    params.require(:comment).permit(:rating,:comment,:post_id)
  end

  def set_property
    @property = Property.find(params[:property_id])
  end
end
