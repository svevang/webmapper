module OpenWorldServer
  class Engine < ::Rails::Engine
    isolate_namespace OpenWorldServer

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
