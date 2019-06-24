class PagesController < ApplicationController 
  layout "visitor", :only => [ :home, :our_dogs ]

  def home
    @puppies = Puppy.all
    render(:layout => "layouts/application")
  end

  def our_dogs
    @mothers = Mother.all
    render(:layout => "layouts/application")
  end

end