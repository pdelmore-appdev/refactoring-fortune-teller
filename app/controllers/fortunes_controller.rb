class FortunesController < ApplicationController

def horoscopes

all_zodiacs = Zodiac.list

@zodiac = params.fetch("the_sign").to_sym



@horoscope = all_zodiacs.fetch(@zodiac).fetch(:horoscope)


@array_of_numbers = Array.new

5.times do
  another_number = rand(1...100)
  
  @array_of_numbers.push(another_number)

end

  render({ :template => "dice_templates/infinity_horoscopes.html.erb" })
end


end
