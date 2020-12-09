class PostCommentsController < ApplicationController
  
  def create
    picture = Picture.find(params[:picture_id])
    comment = PostComment.new(post_comment_params)
    comment.picture_id = picture.id
    if comment.save
    flash[:success] = "投稿が完了しました！"
    redirect_to picture_path(picture) 
    else
      flash[:alert] = "投稿に失敗しました！"
      redirect_to picture_path(picture) 
    end
  end

  def destroy
    PostComment.find_by(id: params[:id], picture_id: params[:picture_id]).destroy
    redirect_to picture_path(params[:picture_id])
  end
  
  private
  def post_comment_params
    params.require(:post_comment).permit(:comment_body, :comment_name)
  end
end
