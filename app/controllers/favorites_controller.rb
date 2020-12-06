class FavoritesController < ApplicationController
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success] = 'この投稿をお気に入りに登録しました'
    redirect_to root_url
  end
  
  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success] = 'この投稿のお気に入りを解除しました'
    redirect_to root_url
  end

end
