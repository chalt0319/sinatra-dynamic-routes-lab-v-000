require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @backwards = @name.reverse
    "#{@backwards}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num * @num
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase].to_s
    @num.times do
      "#{@phrase}"
    end
  end

end
