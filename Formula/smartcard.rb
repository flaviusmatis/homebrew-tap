class Smartcard < Formula
  desc "Smartcard signing service with live activity TUI"
  homepage "https://github.com/flaviusmatis/homebrew-tap"
  version "1.0.2"

  url "https://github.com/flaviusmatis/homebrew-tap/releases/download/v1.0.2/smartcard-1.0.2-darwin-arm64.tar.gz"
  sha256 "b560349063d5ab3033a7504dcf8c5ef485df5320d3491dd94361f93a5bac796a"

  def install
    bin.install "smartcard"
    prefix.install "lib"
  end

  service do
    run [opt_bin/"smartcard"]
    keep_alive true
    log_path var/"log/smartcard.log"
    error_log_path var/"log/smartcard.log"
  end

  test do
    assert_predicate bin/"smartcard", :exist?
  end
end
