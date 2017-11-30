class LsRanksController < ApplicationController

  # before_action :move_to_index, only:

  def index
    @total = Score.order("total DESC")
    total = 0
        # @tweets = Tweet.includes(:user).page(params[:page]).per(5).order("created_at DESC")
    @school = SchoolInfo.find(1)
    @school.scores.each do |s|
      total = total + s.total
    end
    @total_average = total.to_i / (@school.scores.count ? 1 : @school.scores.count.to_i)

  end

  def show
  end

  def new
    @school_info = SchoolInfo.new
    @school_infos = SchoolInfo.all
    @score = Score.new
  end

  def create
    Comment.create(comment_params)
    Score.create(score_params)
  end

  def search
    @school_info = SchoolInfo.where(activated: true).paginate(page: params[:page]).search(params[:search])
  end

  def show_all
    @school_infos = SchoolInfo.all
  end


  private
  def comment_params
    params.permit(:name, :image, :comments, :ls_name)
    # params.require(:school_info).permit(school_id: params[:school_info][:id])
    # params.require(:user).permit(user_id: params[:user][:id])
  end

  def score_params
    @total = (params[:score][:location].to_i + params[:score][:equipment].to_i + params[:score][:curriculum].to_i + params[:score][:othersupport].to_i + params[:score][:atmosphere].to_i)/5.0
    params.require(:score).permit(:location, :equipment, :curriculum, :othersupport, :atmosphere).merge(total: @total, school_info_id: params[:school_info][:id])
  end


  def move_to_index
    redirect_to action: :index
  end
end
