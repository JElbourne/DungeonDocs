class CreateLocationsSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :locations_sessions do |t|
      t.references :location, foreign_key: true
      t.references :session, foreign_key: true
    end
  end
end
