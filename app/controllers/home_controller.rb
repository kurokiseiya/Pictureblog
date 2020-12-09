class HomeController < ApplicationController
  def top
    @pictures = Picture.page(params[:page]).reverse_order
    @user = User.find(id=2)
  end 
end 