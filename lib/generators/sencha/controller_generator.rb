require 'generators/sencha/generator_base'
module Sencha
  class ControllerGenerator < Rails::Generators::NamedBase
    include Sencha::GeneratorBase
    
    def generate_controller
      p "sencha_controller_class #{sencha_controller_class}"
      p "sencha_controller_full_class #{sencha_controller_full_class}"
      p "sencha_controller_file #{sencha_controller_file}"
    end
  end
end