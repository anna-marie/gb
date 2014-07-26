class DropLightTableAgain < ActiveRecord::Migration
  def up
    drop_table :light_options
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
