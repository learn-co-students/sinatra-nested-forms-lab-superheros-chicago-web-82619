require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :new
    end

    # get '/teams/show' do 
    #     erb :show
    # end

    post '/teams' do
        @team = Team.new(params[:team])
        
        @heroes = params[:team][:heroes].map do |details|    
            Hero.new(details)
        end
        
        erb :team
    end
end
