module StaticPagesHelper
  def add_band_btn
    button_tag(class: 'btn btn-default tooltip-class dropdown-toggle',
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

  def invert_background(color)
    "background-color: #{color}; background-color: invert(100%);"
  end

end
