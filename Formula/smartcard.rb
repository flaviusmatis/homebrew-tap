class Smartcard < Formula
  desc "Smartcard signing service with live activity TUI"
  homepage "https://github.com/flaviusmatis/homebrew-tap"
  version "1.0.1"

  url "https://github.com/flaviusmatis/homebrew-tap/releases/download/v1.0.1/smartcard-1.0.1-darwin-arm64.tar.gz"
  sha256 "0cfafe7b6cf53471cae7605605ceec0566e0596c0d653f15e355e3ce3feedfe0"

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
