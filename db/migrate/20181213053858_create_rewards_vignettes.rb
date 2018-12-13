class CreateRewardsVignettes < ActiveRecord::Migration[5.2]
  def change
    create_table :rewards_vignettes do |t|
      t.references :reward, foreign_key: true
      t.references :vignette, foreign_key: true
    end
  end
end
