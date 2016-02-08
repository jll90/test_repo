$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "zintegrator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "zintegrator"
  s.version     = Zintegrator::VERSION
  s.authors     = ["jll90"]
  s.email       = ["jesus.luongo.lizana@gmail.com"]
  s.homepage    = ""
  s.summary     = "Plugin integrator."
  s.description = "Allows for easier integration of plugins."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"
end
