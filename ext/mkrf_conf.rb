require 'rubygems'
require 'rubygems/command.rb'
begin
  Gem::Command.build_args = ARGV
  rescue NoMethodError
end
f = File.open(File.join(File.dirname(__FILE__), "Rakefile"), "w") 
f.write("import '../bin/download_sencha_touch.rb'\n")
f.write("task :default do\n")
f.write("\tp ARGV.inspect\n")
f.write("\tdownload_sencha_touch\n")
f.write("end\n")
f.close