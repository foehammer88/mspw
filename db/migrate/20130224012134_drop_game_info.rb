class DropGameInfo < ActiveRecord::Migration
  def up
      drop_table :game_infos
  end

  def down
  end
end
