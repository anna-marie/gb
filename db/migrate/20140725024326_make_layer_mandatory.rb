class MakeLayerMandatory < ActiveRecord::Migration
  def change
    change_column :plants, :layer_id, :integer, :default => 0, :null => false
  end
end
