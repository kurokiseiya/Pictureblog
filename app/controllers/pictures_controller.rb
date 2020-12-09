class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end
  
  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    if @picture.save
      redirect_to pictures_path
    else
      render :new
    end
    
  end
  
  def index
    @pictures = Picture.all
  end
  
  def show
    @picture = Picture.find(params[:id])
    @post_comment = PostComment.new
  end
  
  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_path
  end
  
  def edit
    @picture = Picture.find(params[:id])
  end
  
  def update
    @picture = Picture.find(params[:id])
    if @picture.update(picture_params)
      redirect_to picture_path(@picture.id)
    else
      render :edit
    end
  end
  
  private
  
  def picture_params
    params.require(:picture).permit(:picture, :image, :caption)
  end
end
