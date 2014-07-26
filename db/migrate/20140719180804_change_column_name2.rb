class ChangeColumnName2 < ActiveRecord::Migration
  def change
    rename_column :plants, :creator_id, :user_id
  end
end
