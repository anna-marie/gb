class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :content

      t.timestamps
    end
  end
end
