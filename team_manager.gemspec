$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "team_manager/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "team_manager"
  spec.version     = TeamManager::VERSION
  spec.authors     = ["Mike Hoitomt"]
  spec.email       = ["mike.hoitomt@gmail.com"]
  spec.homepage    = "https://github.com/hoitomt/team_manager"
  spec.summary     = "A Rails engine for managing sports teams"
  spec.description = <<-DESCDOC
  Provides functionality for auth, teams, registrations, payments,
  tournaments and whatever else I decide to put in here
  DESCDOC
  spec.license     = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.test_files = Dir["spec/**/*"]

  spec.add_dependency "rails", "~> 5.2.2"

  spec.add_development_dependency "pg"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "factory_bot_rails"
  spec.add_development_dependency "byebug"
end
