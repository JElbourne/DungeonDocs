class CreateRecaps < ActiveRecord::Migration[5.2]
  def change
    create_table :recaps do |t|
      t.string :description
      t.references :session, foreign_key: true

      t.timestamps
    end
  end
end
