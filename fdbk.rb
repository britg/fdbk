require 'rubygems'
require 'compass'
require 'sinatra/base'
require 'sinatra/respond_to'
require 'haml'
require 'rack-flash'

class Fdbk < Sinatra::Base

  register Sinatra::RespondTo

  configure do
    set :app_file, __FILE__
    set :static, true
    set :public, 'static'
    set :logging, true
    set :dump_errors, true
  end

  # Compass
  
  get '/css/:name' do
    sass(:"css/#{params[:name]}", Compass.sass_engine_options)
  end

  get '/' do
    "Fdbk"
  end

end
