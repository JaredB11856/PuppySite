class PagesController < ApplicationController 

  def home
    @mothers = Mother.first
  end

  def our_dogs
    @mothers = Mother.first
  end

end