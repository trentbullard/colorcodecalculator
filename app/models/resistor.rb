class Resistor < ActiveRecord::Base

  def CalculateOhmValue bandAColor: nil, bandBColor: nil, bandCColor: nil, bandDColor: nil
    resistance = 0
    
    if bandAColor then 
      band_a = Band.find_by color: bandAColor
      resistance = band_a.significant_figures 
      
      if bandBColor then 
        band_b = Band.find_by color: bandBColor 
        resistance = (resistance * 10) + band_b.significant_figures 
        
        if bandCColor then 
          band_c = Band.find_by color: bandCColor
          resistance = resistance * (10 ** band_c.significant_figures)
          
          if bandDColor then 
            band_d = Band.find_by color: bandDColor
          end
        end
      end
    end
    
    self.resistance = resistance
  end

  def min_resistance ideal_resistance, bandDColor
    band_d = Band.find_by color: bandDColor
    tolerance = band_d.tolerance_pct
    min_resistance = ideal_resistance - (ideal_resistance * band_d.tolerance_pct)
  end

  def max_resistance ideal_resistance, bandDColor
    band_d = Band.find_by color: bandDColor
    tolerance = band_d.tolerance_pct
    min_resistance = ideal_resistance + (ideal_resistance * band_d.tolerance_pct)
  end

end
