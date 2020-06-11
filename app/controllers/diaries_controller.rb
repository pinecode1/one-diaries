class DiariesController < ApplicationController

  def index
    @diaries = Diary.all.order(created_at: :desc)
  end

end
