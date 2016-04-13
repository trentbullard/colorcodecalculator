class Band < ActiveRecord::Base
  def tolerance_pct
    self.tolerance / 100
  end
end
