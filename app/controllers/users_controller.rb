class UsersController < ApplicationController

  def show
   @nickname = current_user.nickname
   @comments = Comment.where(user_id: current_user.id).
  end
end
