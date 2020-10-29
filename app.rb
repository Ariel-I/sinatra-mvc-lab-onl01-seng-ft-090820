require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get "/" do 
    erb :user_input
  end 
  
<<<<<<< HEAD
  post '/piglatinize' do
    @piglatinized = PigLatinizer.new.piglatinize(params[:user_phrase])
  end
=======
  post "/" do 
    @text = params[:user_text]
    @piglatinizer = PigLatinizer.new
   
   erb :results
  end 
>>>>>>> 08449a952d119a1488fb4e7f5cbf69d5feeac7b6
  
end