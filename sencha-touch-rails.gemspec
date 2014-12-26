# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sencha-touch/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "sencha-touch-rails"
  s.version     = SenchaTouch::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Alex Vangelov"]
  s.email       = ["email@data.bg"]
  s.homepage    = "http://rubygems.org/gems/sencha-touch-rails"
  s.summary     = "Using Sencha Touch with Rails"
  s.description = "This gem provides Sencha Touch GPL to Rails assets pipeline"
  s.licenses     = ["AV","MIT"]

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "sencha-touch-rails"

  s.add_dependency "compass", ">= 1.0.1"
  s.add_dependency "compass-blueprint", ">= 1.0.0"

  s.files        = `git ls-files`.split("\n")
  s.extensions   = 'ext/mkrf_conf.rb'
  s.require_path = 'lib'
  
  s.add_development_dependency "rubyzip"
end