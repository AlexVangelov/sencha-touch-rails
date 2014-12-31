require 'generators/sencha/generator_base'
module Sencha
  class ModelGenerator < Rails::Generators::NamedBase
    include Sencha::GeneratorBase
    
    def generate_model
      p "sencha_model_class #{sencha_model_class}"
      p "sencha_model_full_class #{sencha_model_full_class}"
      p "sencha_model_file #{sencha_model_file}"
    end
  end
end