class CreateLocationsNpcs < ActiveRecord::Migration[5.2]
  def change
    create_table :locations_npcs do |t|
      t.references :location, foreign_key: true
      t.references :npc, foreign_key: true
    end
  end
end
