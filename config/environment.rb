require 'pry'
require 'json'
$LOAD_PATH << '.'
Dir["app/concerns/*.rb"].each {|f| require f}
Dir["app/models/*.rb"].each {|f| require f}
require_relative '../controllers/GameController.rb'
