class StaticPagesController < ApplicationController
  def home
    console
    @bands = Band.find([5,8,2])
  end
end
