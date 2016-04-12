class RemovePositionFromBand < ActiveRecord::Migration
  def change
    remove_column :bands, :position, :string
  end
end
