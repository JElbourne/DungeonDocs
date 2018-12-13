class CreateEncounters < ActiveRecord::Migration[5.2]
  def change
    create_table :encounters do |t|
      t.string :type
      t.string :info
      t.references :world, foreign_key: true

      t.timestamps
    end
  end
end
