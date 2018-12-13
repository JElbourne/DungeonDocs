class CreateEncountersVignettes < ActiveRecord::Migration[5.2]
  def change
    create_table :encounters_vignettes do |t|
      t.references :encounter, foreign_key: true
      t.references :vignette, foreign_key: true
    end
  end
end
