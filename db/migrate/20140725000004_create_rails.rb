class CreateRails < ActiveRecord::Migration
  def change
    create_table :rails do |t|
      t.string :destroy
      t.string :scaffold
      t.string :LightOptions

      t.timestamps
    end
  end
end
