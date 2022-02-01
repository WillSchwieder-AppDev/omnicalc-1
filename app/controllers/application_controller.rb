class ApplicationController < ActionController::Base
  def blank_square_controller
    render({ :template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square
    # params = user_input

    @num = params.fetch("calculated").to_f
    @square = (@num**2).to_f
    @num = @num.to_i
    render({ :template => "calculation_templates/square_results.html.erb"})
  end

  def blank_square_root_controller
    render({ :template => "calculation_templates/square_root_form.html.erb"})
  end

  def calculate_square_root
    # params = user_input

    @num = params.fetch("calculated").to_f
    @square_root = Math.sqrt(@num).to_f
    @num = @num.to_i
    render({ :template => "calculation_templates/square_root_results.html.erb"})
  end

  def blank_payment
    render({ :template => "calculation_templates/payment_form.html.erb"})
  end

  def calculate_payment
    @apr = params.fetch("user_apr").to_f
    @apr_s = @apr.to_s(:percentage, { :precision => 4 })
    @years = params.fetch("user_years").to_i
    @pv = params.fetch("user_pv").to_i
    @pv_s = @pv.to_s(:currency)
    @month_apr = @apr/12
    @numerator = (@apr/12/100)*@pv
    @denomenator = 1 - (1 + (@apr/12/100)) ** ( -@years * 12 )
    @payment = (@numerator/@denomenator).to_s(:currency)
    
    render({ :template => "calculation_templates/payment_results.html.erb"})
  end
end
