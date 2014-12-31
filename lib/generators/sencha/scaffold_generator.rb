require 'generators/sencha/generator_base'
module Sencha
  class ScaffoldGenerator < Rails::Generators::NamedBase
    include Sencha::GeneratorBase
    
    def generate_scaffold
      invoke "sencha:model", [name]
      invoke "sencha:view", [name]
      invoke "sencha:controller", [name]
      invoke "sencha:store", [name]
    end
  end
end