require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  get("/goodbye/:name"){
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  }

  get("/multiply/:num1/:num2"){
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    #binding.pry
    "#{@num1 * @num2}"
  }
end
