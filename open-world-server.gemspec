$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "open_world_server/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "open-world-server"
  s.version     = OpenWorldServer::VERSION
  s.authors     = ["Sam Vevang"]
  s.email       = ["sam.vevang@gmail.com"]
  s.homepage    = "https://github.com/svevang/open-world-server"
  s.summary     = "An experiment in geo-spatial development"
  s.description = "n/a"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.0.4"

  s.add_development_dependency "pg"

  s.add_development_dependency 'rspec-rails'

end
