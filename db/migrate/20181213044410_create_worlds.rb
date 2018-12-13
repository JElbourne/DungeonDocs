class CreateWorlds < ActiveRecord::Migration[5.2]
  def change
    create_table :worlds do |t|
      t.string :name
      t.string :description
      t.text :history
      t.string :map_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
