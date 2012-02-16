require 'sencha-touch/rails'
require 'sass'

Sass::Engine::DEFAULT_OPTIONS[:load_paths].tap do |load_paths|
  load_paths ||= []
  load_paths << "#{Gem.loaded_specs['compass'].full_gem_path}/frameworks/compass/stylesheets"
  load_paths << "#{Gem.loaded_specs['compass'].full_gem_path}/frameworks/blueprint/stylesheets" 
end