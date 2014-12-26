# Configure Rails 3.1 to have assert_select_jquery() in tests
module SenchaTouch
  module Rails
    class Engine < ::Rails::Engine
      initializer "add compass assets" do |app|
        #Rails.application.config.assets.precompile += %w{ bookmarklet.css }
        #Rails.application.config.assets.precompile += %w{ bookmarklet.js }
        app.config.assets.paths << "#{Gem.loaded_specs['compass-core'].full_gem_path}/stylesheets"
        app.config.assets.paths << "#{Gem.loaded_specs['compass-blueprint'].full_gem_path}/framework/blueprint/stylesheets"
        app.config.assets.paths << root.join("vendor", "compass-recipes", "stylesheets")
      end
    end
  end
end
