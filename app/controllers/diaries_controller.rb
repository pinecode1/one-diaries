class DiariesController < ApplicationController

  before_action :move_to_index, except: [:index]

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

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
