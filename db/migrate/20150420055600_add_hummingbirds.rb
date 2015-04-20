class AddHummingbirds < ActiveRecord::Migration
  def change  
    add_column :plants, :a_hummingbirds, :boolean, default: nil
  end
end
