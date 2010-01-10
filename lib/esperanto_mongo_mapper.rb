require 'esperanto'
require 'esperanto/morfemiko'

require 'mongo_mapper'

module Esperanto
  module Morfemiko
    autoload :Bazo, 'esperanto/adaptilo/mongo_mapper/morfemiko/bazo'
  end
end
