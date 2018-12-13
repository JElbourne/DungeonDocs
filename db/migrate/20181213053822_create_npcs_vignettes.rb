class CreateNpcsVignettes < ActiveRecord::Migration[5.2]
  def change
    create_table :npcs_vignettes do |t|
      t.references :npc, foreign_key: true
      t.references :vignette, foreign_key: true
    end
  end
end
