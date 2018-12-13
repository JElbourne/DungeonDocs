class CreateLocationsRewards < ActiveRecord::Migration[5.2]
  def change
    create_table :locations_rewards do |t|
      t.references :location, foreign_key: true
      t.references :reward, foreign_key: true
    end
  end
end
