require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        text = params[:user_phrase]
        pl_obj = PigLatinizer.new
        @piggy_text = pl_obj.piglatinize(text)
        
        erb :results
    end
end