require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
       erb :super_hero
     end
     get '/new' do
       erb :'pirates/new'
     end
     post '/teams' do
      #  binding.pry
       @team = Team.new(params[:team])
       params[:team][:members].each do |details|
         Member.new(details)
       end
       @members = Member.all

       erb :'team'
     end
end
