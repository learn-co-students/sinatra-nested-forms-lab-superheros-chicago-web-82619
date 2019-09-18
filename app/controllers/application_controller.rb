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
        @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
        @super_heroes = members.map do |m|
            SuperHero.new({name: m[:name], power: m[:power], bio: m[:bio]})
        end
        erb :team
    end


end
