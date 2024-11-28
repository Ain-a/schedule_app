class RemoveIsAllDayFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :is_all_day, :boonlean
  end
end
