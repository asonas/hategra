require "hategra/version"
require "erb"

module Hategra
  unless ARGV[0]
    puts "Please give as arguments Hatena-Notation"
    puts "Ex. [http://instagram.com/p/Y-Q9qvNBbh/:image=http://distilleryimage5.s3.amazonaws.com/781e7932b65511e29a5822000a9f15d4_7.jpg]"
    exit
  end

  root = File.expand_path '../..', __FILE__
  template_path = File.join root, "lib/template.erb"

  template = ERB.new(File.read(template_path))

  urls = ARGV[0].delete("[]").split(":image=")

  system("echo '#{template.result(binding)}' | pbcopy")
  puts "Copied!"
end
