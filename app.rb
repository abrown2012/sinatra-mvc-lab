require_relative 'config/environment'

class App < Sinatra::Base
   
   
    post '/piglatinize' do
        text_from_user = params[:user_phrase]

        @pig_text = PigLatinizer.new.piglatinize(text_from_user)
        
        erb :new_view
    end

    get '/' do 
        erb :user_input
    end 



end


