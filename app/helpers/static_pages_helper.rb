module StaticPagesHelper
  def add_band_btn
    link_to('#',
            class: 'btn btn-default tooltip-class dropdown-toggle',
            id: 'dropdownAddBand',
            data: {toggle: 'dropdown'},
            aria: {haspopup: true, expanded: false}) do
      content_tag(:div,
                  data: {toggle: 'tooltip',
                         placement: 'top',
                         'original-title' => 'Add Band'}) do
        '+'
      end
    end
  end

  def add_band_link resistor, current_bands, new_band, options={}
    render 'new_resistor', resistor: resistor, bands: current_bands, new_band: new_band, style: options[:style]
  end

  def band_link(band)
    link_to '', class: 'tooltip-class', style: "color: #{band.color};" do
      content_tag :span, data: {toggle: 'tooltip', placement: 'top', 'original-title' => "#{band.color}"} do
        '|'
      end
    end
  end

  def invert_background(color)
    "background-color: #{color}; background-color: invert(100%);"
  end

end
