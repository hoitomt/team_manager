require 'devise'
require 'carrierwave'

module TeamManager
  class Engine < ::Rails::Engine
    isolate_namespace TeamManager
  end
end
