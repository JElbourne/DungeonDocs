class CreateNpcNames < ActiveRecord::Migration[5.2]
  def change
    create_table :npc_names do |t|
      t.string :name
      t.references :cheat_sheet, foreign_key: true

      t.timestamps
    end
  end
end
