class CreateResistors < ActiveRecord::Migration
  def change
    create_table :resistors do |t|
      t.decimal :resistance
      t.integer :band_a_id
      t.integer :band_b_id
      t.integer :band_c_id
      t.integer :band_d_id

      t.timestamps null: false
    end
  end
end
