class PagesController < ApplicationController 

  def home
    @puppy = Puppy.first
  end

  def our_dogs
    @mother = Mother.first
  end

end