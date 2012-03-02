require 'rubygems'
require 'open-uri'
require 'zip/zip'
require 'fileutils'

def download_sencha_touch(sencha_touch_zip=nil)
  size = ""
  sencha_touch_zip = 'http://dev.sencha.com/deploy/sencha-touch-2-rc2.zip'
  puts "Get #{sencha_touch_zip}"
  open( sencha_touch_zip, 
    :content_length_proc => lambda {|t|
      if t && 0 < t
        size = t.to_s
      end
    },
    :progress_proc => lambda {|s|
      p "Downloading #{s} of #{size}\r"
    },
    "User-Agent" => "Mozilla/5.0 (X11; U; Linux; i686; en-US; rv:1.6) Gecko Debian/1.6-7","Referer" => "http://github.com/AlexVangelov/sencha-touch-rails/") {|zf|
        Zip::ZipFile.open(zf.path) do |zipfile|
          zipfile.each{|e|
            p "Extracting #{File.basename(e.to_s)}\r"
            fpath = File.join('sencha-touch', e.to_s)
            FileUtils.mkdir_p(File.dirname(fpath))
            zipfile.extract(e, fpath){ true }
          }
        end
    }
   puts "\nDone!"
end
