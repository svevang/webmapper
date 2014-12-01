ENV['RAILS_ENV'] ||= 'test'

require 'factory_girl_rails'
require 'pry'
require 'rgeo/geo_json'

Rails.backtrace_cleaner.remove_silencers!
