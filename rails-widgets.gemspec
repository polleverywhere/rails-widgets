$:.unshift File.expand_path("../lib", __FILE__)

require "widgets/version"

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = "rails-widgets"
  s.version     = Widgets::VERSION
  s.authors      = ["Nick Plante", "Paolo Dona"]
  s.email        = ["nap@zerosum.org", "paolo.dona@gmail.com"]
  s.homepage    = "https://github.com/polleverywhere/rails-widgets"
  s.summary     = "UI Widgets for RubyOnRails"
  s.description = "UI Widgets for RubyOnRails"

  s.required_ruby_version     = '>= 1.9.0'
  s.required_rubygems_version = '>= 1.3.7'

  s.license            = 'MIT'
  s.require_paths      = ["lib"]

  s.files              = Dir["{lib,generators}/**/*", "LICENSE", "CHANGELOG", "Rakefile", "README"]
  s.test_files         = Dir["test/**/*"]

  s.add_development_dependency "rails", [">= 3.0", "< 5.0"]
end
