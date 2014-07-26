class CreateLights < ActiveRecord::Migration
  def change
    create_table :lights do |t|
      t.string :content

      t.timestamps
    end
  end
end
