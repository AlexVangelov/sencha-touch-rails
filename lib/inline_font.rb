module Betts 
  module SassExtensions
    module Functions
      module RailsFonts
        def rails_inline_font_files(*args)
          raise Sass::SyntaxError, "An even number of arguments must be passed to font_files()" unless args.size % 2 == 0
          files = []
          while args.size > 0
            path = args.shift.value
            fonts_path = File.join(File.expand_path('../../',__FILE__), "vendor/assets", "fonts")
            real_path = File.join(fonts_path, path)
            url = inline_image_string(data(real_path), compute_mime_type(path))
            files << "#{url} format('#{args.shift}')"
          end
          Sass::Script::String.new(files.join(", "))
        end
      end
    end
  end
end

module Sass::Script::Functions
  include Betts::SassExtensions::Functions::RailsFonts
end

