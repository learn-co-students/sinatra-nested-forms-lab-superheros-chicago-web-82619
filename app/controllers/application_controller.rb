require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
        erb :super_hero
    end

    post "/teams/?" do
        @team = Team.new(params[:team])
        @hero1 = SuperHero.new(params[:team][:hero][0])
        @hero2 = SuperHero.new(params[:team][:hero][1])
        @hero3 = SuperHero.new(params[:team][:hero][2])
        erb :team
    end
end
