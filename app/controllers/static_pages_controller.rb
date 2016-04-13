class StaticPagesController < ApplicationController
  
  def home
    console
    @bands = Band.all
    @resistor = if Resistor.last then Resistor.last else Resistor.new end
    @bands_selected = []
    if @resistor.band_a_id then @bands_selected.push(@bands[@resistor.band_a_id-1]) end
    if @resistor.band_b_id then @bands_selected.push(@bands[@resistor.band_b_id-1]) end
    if @resistor.band_c_id then @bands_selected.push(@bands[@resistor.band_c_id-1]) end
    if @resistor.band_d_id then @bands_selected.push(@bands[@resistor.band_d_id-1]) end
  end
end
