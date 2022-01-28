class ApplicationController < ActionController::Base
  def blank_square_controller
    render({ :template => "calculation_templates/square_form.html.erb"})
    
  end

end
