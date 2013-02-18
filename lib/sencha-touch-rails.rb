require 'sencha-touch/rails'
require 'theme_images'

module SenchaTouch
  def load!
    stylesheets = File.expand_path(File.join("..", 'vendor', 'assets', 'stylesheets'))
    Sass.load_paths << stylesheets
  end
end

SenchaTouch.load!