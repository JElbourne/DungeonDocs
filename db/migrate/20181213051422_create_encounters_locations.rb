class CreateEncountersLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :encounters_locations do |t|
      t.references :location, foreign_key: true
      t.references :encounter, foreign_key: true
    end
  end
end
