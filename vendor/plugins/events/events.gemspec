$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "events/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "events"
  s.version     = Events::VERSION
  s.authors     = ["Your name"]
  s.email       = ["yourname@domain.com"]
  s.homepage    = "http://www.spinacms.com/"
  s.summary     = "Summary of Events."
  s.description = "Description of Events."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"
  s.add_dependency "spina"

  s.add_development_dependency "sqlite3"
end
