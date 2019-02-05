class LikesController < ApplicationController
  def create
  like = current_user.likes.create(image_id: params[:image_id])
  redirect_to images_url, notice: "#{like.image.user.name}さんの投稿をお気に入り登録しました"
end

def destroy
  like = current_user.likes.find_by(id: params[:id]).destroy
  redirect_to images_url, notice: "#{like.image.user.name}さんの投稿をお気に入り解除しました"
end
end
