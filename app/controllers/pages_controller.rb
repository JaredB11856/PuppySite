class PagesController < ApplicationController 

  def home
    @puppies = Puppy.all
  end

  def our_dogs
    @mothers = Mother.all
  end

end