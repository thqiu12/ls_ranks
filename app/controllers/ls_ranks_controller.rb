class LsRanksController < ApplicationController

  # before_action :move_to_index, only:

  def index

  end

  def show
  end

  def new
    @school_infos = SchoolInfo.all
  end

  def create
    Comment.create(comment_params)
  end

  private
  def comment_params
    params.permit(:name, :image, :comments, :ls_name)
  end

  def move_to_index
    redirect_to action: :index
  end
end