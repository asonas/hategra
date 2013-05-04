require "hategra/version"
require "erb"

module Hategra
  urls = ARGV[0].delete("[]").split(":image=")

  template = ERB.new(File.read("./lib/template.erb"))

  system("echo '#{template.result(binding)}' | pbcopy")
end
