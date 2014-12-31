require 'generators/sencha/generator_base'
module Sencha
  class ViewGenerator < Rails::Generators::NamedBase
    include Sencha::GeneratorBase
    
    def generate_view
      p "sencha_view_class #{sencha_view_class}"
      p "sencha_view_full_class #{sencha_view_full_class}"
      p "sencha_view_file #{sencha_view_file}"
    end
  end
end