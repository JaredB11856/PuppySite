class PagesController < ApplicationController 

  def home
    @mothers = Mother.first
  end

end