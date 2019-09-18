require 'sinatra/base'


class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :form
    end

    get'/teams' do
        @teams = Team.all
        erb :team
    end

    post '/teams' do
        p params
        @team = Team.new(params["team"])
        params["team"]["heroes"].each do |info|
            Hero.new(info)
        end
    
        @heroes = Hero.all

        erb :team
    end
end
