require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    configure do
        set :views, 'app/views'
        set :method_override, true
      end
    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team = Team.new(params[:team])
        @hero1 = SuperHero.new(params[:team][:members][0])
        @hero2 = SuperHero.new(params[:team][:members][1])
        @hero3 = SuperHero.new(params[:team][:members][2])
        erb :team
    end


end
