class StaticPagesController < ApplicationController
  def home
    @bands = Band.find([5,8,2])
  end
end
