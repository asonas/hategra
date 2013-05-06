require "hategra/version"
require "erb"

module Hategra
  root = File.expand_path '../..', __FILE__
  template_path = File.join root, "lib/template.erb"

  template = ERB.new(File.read(template_path))

  urls = ARGV[0].delete("[]").split(":image=")

  system("echo '#{template.result(binding)}' | pbcopy")
end
