class CreateRewards < ActiveRecord::Migration[5.2]
  def change
    create_table :rewards do |t|
      t.string :name
      t.string :info
      t.string :type
      t.string :image_url
      t.references :world, foreign_key: true
      
      t.timestamps
    end
  end
end
