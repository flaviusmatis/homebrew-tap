class Smartcard < Formula
  desc "Smartcard signing service with live activity TUI"
  homepage "https://github.com/flaviusmatis/homebrew-tap"
  version "1.0.0"

  url "https://github.com/flaviusmatis/homebrew-tap/releases/download/v1.0.0/smartcard-1.0.0-darwin-arm64.tar.gz"
  sha256 "4743de370ca7aae1986f286055344def302c877aaec5ce263a567b7fc28b52f3"

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
