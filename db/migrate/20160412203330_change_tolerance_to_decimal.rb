class ChangeToleranceToDecimal < ActiveRecord::Migration
  def change
    remove_column :bands, :tolerance, :integer
    add_column :bands, :tolerance, :decimal
  end
end
