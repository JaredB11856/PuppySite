class PagesController < ApplicationController 

  def home
    @puppy = Puppy.first
  end

  def our_dogs
    @mothers = Mother.all
  end

end