class CreateCheatSheets < ActiveRecord::Migration[5.2]
  def change
    create_table :cheat_sheets do |t|
      t.references :world, foreign_key: true

      t.timestamps
    end
  end
end
