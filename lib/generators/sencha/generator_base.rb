module Sencha
  module GeneratorBase
    extend ActiveSupport::Concern

    included do
      #argument :attributes, type: :array, default: []
      source_root File.expand_path("../templates", __FILE__)
    end
    
    def app_name
      application_name.humanize
    end
    
    def sencha_model_class
      human_name.singularize
    end
    def sencha_model_full_class
      [app_name, :model, class_path, sencha_model_class].flatten.join(".")
    end
    def sencha_model_file
      [:app, :assets, :javascripts, :model, class_path, sencha_model_class].flatten.join("/") << '.coffee'
    end
    
    def sencha_view_class
      human_name.pluralize
    end
    def sencha_view_full_class
      [app_name, :view, class_path, sencha_view_class].flatten.join(".")
    end
    def sencha_view_file
      [:app, :assets, :javascripts, :view, class_path, sencha_view_class].flatten.join("/") << '.coffee'
    end
    
    def sencha_store_class
      [human_name.pluralize, :Store].join
    end
    def sencha_store_full_class
      [app_name, :store, class_path, sencha_store_class].flatten.join(".")
    end
    def sencha_store_file
      [:app, :assets, :javascripts, :store, class_path, sencha_store_class].flatten.join("/") << '.coffee'
    end

    def sencha_controller_class
      [human_name.pluralize, :Ctrl].join
    end
    def sencha_controller_full_class
      [app_name, :controller, class_path, sencha_controller_class].flatten.join(".")
    end
    def sencha_controller_file
      [:app, :assets, :javascripts, :controller, class_path, sencha_controller_class].flatten.join("/") << '.coffee'
    end
  end
end