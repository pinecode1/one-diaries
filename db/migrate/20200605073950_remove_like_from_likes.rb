class RemoveLikeFromLikes < ActiveRecord::Migration[5.2]
  def change
    remove_column :likes, :like, :string
  end
end
