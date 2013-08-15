require 'formula'

class Jsonpps < Formula
  homepage 'https://github.com/bazaarvoice/jsonpps'
  url 'http://repo1.maven.org/maven2/com/bazaarvoice/jsonpps/jsonpps/1.1/jsonpps-1.1.jar'
  sha1 '6d8abeeb5bb0e70965ac24d7fb77fd2a73b01707'

  def install
    libexec.install "jsonpps-1.1.jar"
    bin.write_jar_script libexec/"jsonpps-1.1.jar", "jsonpps", "-Xms64m -Xmx64m"
  end
end
