class SchoolInfoController < ApplicationController

  def show
    @school_info = SchoolInfo.find(params[:id])
    @comments = Comment.where(school_id: params[:id])
  end
end
