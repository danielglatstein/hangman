require 'pry'
require 'json'
$LOAD_PATH << '.'
Dir["app/concerns/*.rb"].each {|f| require f}
Dir["app/models/*.rb"].each {|f| require f}
Dir["app/bin/*.rb"].each {|f| require f}

