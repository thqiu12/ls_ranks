class UsersController < ApplicationController

  def show
   @nickname = User.find(params[:id]).nickname
   @comments = Comment.where(user_id: current_user.id)
  end
end
