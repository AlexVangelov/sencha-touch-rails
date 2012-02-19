module Sass::Rails
    class SassTemplate
      def sass_options_from_rails(scope)
        options = scope.environment.context_class.sass_config
        options.load_paths << "#{Gem.loaded_specs['compass'].full_gem_path}/frameworks/compass/stylesheets"
        options.load_paths << "#{Gem.loaded_specs['compass'].full_gem_path}/frameworks/blueprint/stylesheets" 
        return options
      end
    end
end 