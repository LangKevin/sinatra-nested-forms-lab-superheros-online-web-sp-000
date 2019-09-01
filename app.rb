require './environment'

# module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
       erb :root
     end
     get '/new' do
       erb :'pirates/new'
     end
     post '/teams' do
       @team = Team.new(params[:team])
       params[:pirate][:ships].each do |details|
         Ship.new(details)
       end
       @ships = Ship.all

       erb :'team'
     end
  end
# end
