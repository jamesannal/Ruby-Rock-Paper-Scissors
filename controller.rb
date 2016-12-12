require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/game_code.rb')
require('json')

get '/' do
  erb(:home)
end

get '/rps/:hand1/:hand2' do
  game = Game.new(params[:hand1], params[:hand2])
  @result = game.winner
  erb(:result)
end
