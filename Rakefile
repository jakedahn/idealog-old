require 'rubygems'
require 'sinatra'
require 'activerecord'
require 'config/config.rb'
require 'models.rb'

namespace 'db' do
  desc "Create db schema"
  task :create do        
  
    ActiveRecord::Migration.create_table :people do |t|
      t.string :name
      t.string :email
      t.string :url
      
      t.timestamps
    end
    ActiveRecord::Migration.create_table :ideas do |t|
      t.string :idea
      t.integer :user_id
      t.integer :status
      
      t.timestamps
    end
    
  end  
  
  desc "Fill database with sample data"
  task :fill do
    Person.new(:name => "annette", :email => "breathingdakota@gmail.com", :url => "http://creativethinkings.com").save
    Person.new(:name => "brad", :email => "alllateralus@gmail.com", :url => "http://bradleyolson.com").save
    Person.new(:name => "jake", :email => "jake@ang.st", :url => "http://jakedahn.com").save
    Person.new(:name => "jesse", :email => "jesse@ang.st", :url => "http://overstimulate.com").save
    Person.new(:name => "danny", :email => "thesirdanny@gmail.com", :url => "http://danielnicolas.net").save
        
    # Idea.new(:idea => "idea test", :user_id => 1, :status => 0).save
    # Idea.new(:idea => "idea test", :user_id => 2, :status => 0).save
    # Idea.new(:idea => "idea test", :user_id => 3, :status => 0).save
    # Idea.new(:idea => "idea test", :user_id => 4, :status => 0).save
    # Idea.new(:idea => "idea test", :user_id => 5, :status => 0).save
  end
  
end