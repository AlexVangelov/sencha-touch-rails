require 'generators/sencha/generator_base'
module Sencha
  class StoreGenerator < Rails::Generators::NamedBase
    include Sencha::GeneratorBase
    
    def generate_store
      p "sencha_store_class #{sencha_store_class}"
      p "sencha_store_full_class #{sencha_store_full_class}"
      p "sencha_store_file #{sencha_store_file}"
    end
  end
end