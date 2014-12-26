dir = File.dirname(__FILE__)
# Include compass-recipes
require File.join(dir, '../vendor', 'compass-recipes', 'config')

Compass::BrowserSupport.add_support('repeating-linear-gradient', 'webkit', 'moz', 'o', 'ms')
Compass::Frameworks.register 'sencha-touch', dir

module Compass
  module Configuration
    module Defaults
      def default_fonts_dir
        "vendor/assets/fonts"
      end
      def default_project_path
        File.expand_path('../../',__FILE__)
      end
    end
  end
end