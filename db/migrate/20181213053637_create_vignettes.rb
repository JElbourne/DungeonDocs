class CreateVignettes < ActiveRecord::Migration[5.2]
  def change
    create_table :vignettes do |t|
      t.string :problem_description
      t.references :cheat_sheet, foreign_key: true

      t.timestamps
    end
  end
end
