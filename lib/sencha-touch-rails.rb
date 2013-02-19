require 'sencha-touch/rails'
require 'theme_images'

module SenchaTouch
  def self.load!
    path = File.expand_path File.dirname(__FILE__)
    Sass.load_paths << File.expand_path(File.join(path, "..", 'vendor', 'assets', 'stylesheets'))
    Sass.load_paths << File.expand_path(File.join(path, "..", 'vendor', 'assets', 'stylesheets', 'sencha-touch', 'default'))
  end
end

SenchaTouch.load!