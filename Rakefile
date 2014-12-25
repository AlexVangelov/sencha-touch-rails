require 'bundler'
require 'fileutils'
Bundler::GemHelper.install_tasks

task :default


import 'bin/download_sencha_touch.rb'
task :download_sencha_touch do
  download_sencha_touch
end

task :install_sencha_touch do
  FileUtils.mv "sencha-touch/touch-2.4.1/src","vendor/assets/javascripts/sencha-touch"
  FileUtils.mv "sencha-touch/touch-2.4.1/resources/themes/stylesheets/sencha-touch","vendor/assets/stylesheets/sencha-touch"
  FileUtils.mv "sencha-touch/touch-2.4.1/resources/sass", "vendor/assets/stylesheets/sencha-touch/themes"
  FileUtils.mv "sencha-touch/touch-2.4.1/resources/themes/fonts", "vendor/assets/fonts"
  FileUtils.mv "sencha-touch/touch-2.4.1/resources/themes/images", "vendor/assets/images/sencha-touch"
  FileUtils.mv "sencha-touch/touch-2.4.1/resources/themes/vendor/compass-recipes", "vendor/compass-recipes"
  FileUtils.mv [
    "sencha-touch/touch-2.4.1/sencha-touch-all-debug.js",
    "sencha-touch/touch-2.4.1/sencha-touch-all.js",
    "sencha-touch/touch-2.4.1/sencha-touch-debug.js",
    "sencha-touch/touch-2.4.1/sencha-touch.js"
    ], 
    "vendor/assets/javascripts"
end
