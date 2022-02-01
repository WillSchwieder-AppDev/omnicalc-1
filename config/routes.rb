Rails.application.routes.draw do
  get("/square/new", { :controller => "application", :action => "blank_square_controller"})
  get("/square/results", { :controller => "application", :action => "calculate_square"})
  get("/square_root/new", { :controller => "application", :action => "blank_square_root_controller"})
  get("/square_root/results", { :controller => "application", :action => "calculate_square_root"})
  get("/payment/new", { :controller => "application", :action => "blank_payment"})
  get("/payment/results", { :controller => "application", :action => "calculate_payment"})
end
