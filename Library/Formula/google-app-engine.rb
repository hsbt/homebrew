require "formula"

class GoogleAppEngine < Formula
  homepage "https://developers.google.com/appengine/"
  url "https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.13.zip"
  sha256 "75e28dd351655a8a5478089e2bc7ff20a0e76f8a8c9f2635661872cf2a0549d5"

  def install
    cd ".."
    share.install "google_appengine" => name
    %w[
      _python_runtime.py
      _php_runtime.py
      api_server.py
      appcfg.py
      bulkload_client.py
      bulkloader.py
      dev_appserver.py
      download_appstats.py
      endpointscfg.py
      gen_protorpc.py
      google_sql.py
      old_dev_appserver.py
      remote_api_shell.py
    ].each do |fn|
      bin.install_symlink share/name/fn
    end
  end
end
