class ZebraController < ApplicationController
  def cow
    @num_dice = params.fetch("number_of_dice").to_i
    @num_side = params.fetch("number_of_side").to_i
  
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@num_side)
  
      @rolls.push(die)
    end  

    render({ :template => "game_templates/flexible" })  

  end 

  def homepage
    render({ :template => "game_templates/homepage" }) 
  end  
end  
