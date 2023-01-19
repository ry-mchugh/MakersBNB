require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/space_repository'
require_relative 'lib/booking_repository'
require_relative 'lib/user_repository'
require_relative 'lib/database_connection.rb'

class Application < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    also_reload  'lib/user_repository'
    also_reload  'lib/booking_repository'
    also_reload  'lib/space_repository'
  end
  configure  do
    register Sinatra::Reloader
    also_reload  'lib/user_repository'
    also_reload  'lib/booking_repository'
    also_reload  'lib/space_repository'
  end
  get '/' do
    return erb(:home)
  end

  get '/spaces' do
    repo = SpaceRepository.new

    @spaces_list = repo.all
    return erb(:spaces)
  end

  get '/spaces/:id' do
    repo = SpaceRepository.new
    id = params[:id]
    @space = repo.find(id)
    @dates = @space.dates_available.split(",")
    return erb (:space) 
  end

  get '/signup' do
    return erb(:signup)
  end

  post '/signup' do
    if invalid_request_parameters? 
      status 400
      return ''
    end

    repo = UserRepository.new
    user = User.new
    user.first_name = params[:first_name]
    user.last_name =  params[:last_name]
    user.username = params[:username]
    user.email_address = params[:email_address]
    user.password = params[:password]
    user.user_created_date = DateTime.now
    repo.create(user)
    redirect '/spaces'
  end

  def invalid_request_parameters?
    params[:first_name] == "" || params[:last_name] == "" || params[:username] == "" || params[:email_address] == "" || params[:password] == ""
  end

  

end

