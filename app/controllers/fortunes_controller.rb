class FortunesController < ApplicationController

def horoscopes

@sign = params.fetch("the_sign")

  render({ :template => "dice_templates/infinity_horoscopes.html.erb" })
end


end
