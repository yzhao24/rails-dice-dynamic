Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "homepage"})
  get("/dice/:number_of_dice/:number_of_side", { :controller => "zebra", :action => "cow" })
  
end
