class AddIndexToBandColor < ActiveRecord::Migration
  def change
    add_index :bands, :color, unique: true
  end
end
