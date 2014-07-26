class CreateLightOptions < ActiveRecord::Migration
  def change
    create_table :light_options do |t|
      t.string :content

      t.timestamps
    end
  end
end
