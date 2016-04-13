class ResistorsController < ApplicationController
  def create
    @resistor = Resistor.new(resistor_params)
    @resistor.save
    redirect_to root_path
  end

  def update
    @resistor = Resistor.find(params[:id])
    @resistor.update(resistor_params)
    redirect_to root_path
  end

  private

  def resistor_params
    params.require(:resistor).permit(:band_a_id,
                                 :band_b_id,
                                 :band_c_id, 
                                 :band_d_id)
  end
end
