class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :position
      t.string :color
      t.integer :significant_figures
      t.integer :multiplier
      t.integer :tolerance

      t.timestamps null: false
    end
  end
end
