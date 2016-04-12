class ChangeBandsMultiplierToDecimal < ActiveRecord::Migration
  def change
    remove_column :bands, :multiplier, :integer
    add_column :bands, :multiplier, :decimal
  end
end
