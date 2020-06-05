class RenameDiaryColumnToDiaries < ActiveRecord::Migration[5.2]
  def change
    rename_column :diaries, :diary, :content
  end
end
