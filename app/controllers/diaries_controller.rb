class DiariesController < ApplicationController

  # before_action :move_to_index, except: [:index]

  def index
    @diaries = Diary.all.order(created_at: :desc)
  end

  def new
  end

  def create
    Diary.create(content: diary_params[:content], user_id: current_user.id)
  end

  def edit
    @diary = Diary.find(params[:id])
  end

  def update
    diary = Diary.find(params[:id])
    if diary.user_id == current_user.id
      diary.update(diary_params)
    end
  end

  def destroy
    diary = Diary.find(params[:id])
    diary.destroy if diary.user_id == current_user.id
  end

  private
  def diary_params
    params.permit(:content)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
