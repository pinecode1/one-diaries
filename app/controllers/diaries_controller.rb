class DiariesController < ApplicationController

  def index
    @diaries = Diary.all.order(created_at: :desc)
  end

  def new
  end

  def create
    Diary.create(diary_params)
  end

  private
  def diary_params
    params.permit(:content)
  end

end
