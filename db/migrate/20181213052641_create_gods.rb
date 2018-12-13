class CreateGods < ActiveRecord::Migration[5.2]
  def change
    create_table :gods do |t|
      t.string :name
      t.string :description
      t.references :world, foreign_key: true

      t.timestamps
    end
  end
end
