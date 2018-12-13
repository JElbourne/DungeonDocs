class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :type
      t.string :name
      t.string :info
      t.references :world, foreign_key: true
      t.boolean :important

      t.timestamps
    end
  end
end
