require 'formula'

class GoogleAppEngine < Formula
  homepage 'https://developers.google.com/appengine/'
  url 'http://googleappengine.googlecode.com/files/google_appengine_1.7.7.zip'
  sha1 '030b194351c99a706bbb35af0caf7496ccef319b'

  def install
    cd '..'
    share.install 'google_appengine' => name
    bin.mkpath
    %w[
      _python_runtime.py api_server.py appcfg.py bulkload_client.py bulkloader.py dev_appserver.py download_appstats.py endpointscfg.py gen_protorpc.py google_sql.py old_dev_appserver.py remote_api_shell.py
    ].each do |fn|
      ln_s share+name+fn, bin
    end
  end
end
