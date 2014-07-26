class CreateLayers < ActiveRecord::Migration
  def change
    create_table :layers do |t|
      t.string :content

      t.timestamps
    end
  end
end
