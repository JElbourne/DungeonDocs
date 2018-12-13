class CreateArtifacts < ActiveRecord::Migration[5.2]
  def change
    create_table :artifacts do |t|
      t.string :name
      t.string :importance
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
