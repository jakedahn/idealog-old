require 'rubygems'
require 'sinatra'
require 'sass'
require 'activerecord'
require 'digest/md5'

load 'config/config.rb'
load 'models.rb'
load 'methods.rb'

module IdeaLog
  class App < Sinatra::Default
    set :sessions, true
    set :run, false

    before do
      @flash = get_flash.nil? ? "" : "<span class='flash'>#{get_flash}</span>"  
    end

    get '/style.css' do
      content_type 'text/css'
      sass :style
    end

    get '/' do
      @title = "Idea Log"
      @people = Person.all

      haml :index
    end
    
    get '/:name' do
      @people = Person.all(:conditions => ["name = ?", params[:name]])
      haml :single
    end
    
    post '/add_idea' do
      Idea.create(params[:idea])
      redirect("/")
    end

  end
end