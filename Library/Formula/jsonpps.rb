require 'formula'

class Jsonpps < Formula
  homepage 'https://github.com/bazaarvoice/jsonpps'
  url 'http://repo1.maven.org/maven2/com/bazaarvoice/jsonpps/jsonpps/1.0/jsonpps-1.0.jar'
  sha1 'eff26151ffe7b45202aa5343a127b8334d1c2dee'

  def install
    libexec.install "jsonpps-1.0.jar"
    bin.write_jar_script libexec/"jsonpps-1.0.jar", "jsonpps", "-Xms64m -Xmx64m"
  end
end
