require 'test_helper'

class ResistorTest < ActiveSupport::TestCase
  
  test 'should ensure CalculateOhmValue returns 0 if no colors are supplied' do
    resistor = Resistor.new
    assert_equal 0, resistor.CalculateOhmValue(), 'returned something other than 0'
  end

  test 'CalculateOhmValue should return the sig_fig value of a single color' do
    resistor = Resistor.new
    assert_equal 2, resistor.CalculateOhmValue(bandAColor: 'brown')
  end

  test 'CalculateOhmValue should return the correct value for 2 supplied colors' do
    resistor = Resistor.new
    assert_equal 12, resistor.CalculateOhmValue(bandAColor: 'black', 
                                                bandBColor: 'brown')
  end

  test 'CalculateOhmValue should return the correct value for 3 supplied colors' do
    resistor = Resistor.new
    assert_equal 1200, resistor.CalculateOhmValue(bandAColor: 'black', 
                                                  bandBColor: 'brown', 
                                                  bandCColor: 'brown')
  end

  test 'CalculateOhmValue should return the correct value for 4 supplied colors' do
    resistor = Resistor.new
    assert_equal 1200, resistor.CalculateOhmValue(bandAColor: 'black', 
                                                  bandBColor: 'brown', 
                                                  bandCColor: 'brown',
                                                  bandDColor: 'brown')
  end
end
