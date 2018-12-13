class CreateNpcMotivators < ActiveRecord::Migration[5.2]
  def change
    create_table :npc_motivators do |t|
      t.string :type
      t.string :description
      t.references :cheat_sheet, foreign_key: true

      t.timestamps
    end
  end
end
