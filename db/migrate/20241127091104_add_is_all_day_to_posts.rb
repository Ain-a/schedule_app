class AddIsAllDayToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :is_all_day, :boolean
  end
end
