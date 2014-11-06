$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "open_world_server/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "open_world_server"
  s.version     = OpenWorldServer::VERSION
  s.authors     = ["Sam Vevang"]
  s.email       = ["sam.vevang@gmail.com"]
  s.homepage    = "https://github.com/svevang/open-world-server"
  s.summary     = "an experiment in geospatial development"
  s.description = "None"
  s.license     = "All Rights Reserved"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.7"

  s.add_development_dependency "pg"
  s.add_development_dependency 'rspec-rails', '~> 3.1.0'
  s.add_development_dependency 'factory_girl', '~> 4.5'

end
