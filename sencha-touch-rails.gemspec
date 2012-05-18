# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sencha-touch/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "sencha-touch-rails"
  s.version     = SenchaTouch::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Alex Vangelov", "Kenny Meyer"]
  s.email       = ["kenny@kennymeyer.net"]
  s.homepage    = ""
  s.summary     = "Use Sencha Touch with Rails 3"
  s.description = "This gem provides Sencha Touch driver for Rails 3 applications"

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "railties", ">= 3.2.1", "< 5.0"
  s.add_dependency "thor",     "~> 0.14"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").select{|f| f =~ /^bin/}
  s.require_path = 'lib'
end