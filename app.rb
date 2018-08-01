require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @name = params[:name]
    @backwards = @name.reverse 
    "#{@backwards}"
  end 

end