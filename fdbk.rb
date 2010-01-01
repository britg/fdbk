require 'rubygems'
require 'compass'
require 'sinatra/base'
require 'sinatra/respond_to'
require 'haml'
require 'rack-flash'

require 'lib/db'
require 'vendor/sinatra-authentication/lib/sinatra-authentication.rb'

class Fdbk < Sinatra::Base
  use Rack::Session::Cookie, :key => 'fdbk.session',
                             :domain => ENV['HTTP_HOST'],
                             :path => '/',
                             :expire_after => 3600*24*365,
                             :secret => 'alkj328ff2kwfj2@EFGQwch023jfg2h'

  register Sinatra::LilAuthentication 

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
