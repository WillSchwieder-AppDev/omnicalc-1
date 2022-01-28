Rails.application.routes.draw do
  get("/square/new", { :controller => "application", :action => "blank_square_controller"})
  

end
