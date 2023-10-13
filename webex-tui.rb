class WebexTui < Formula
  desc "Unofficial Webex chat client for the terminal"
  homepage "https://github.com/sgrimee/webex-tui"
  url "https://github.com/sgrimee/webex-tui/releases/download/v0.1.0/webex-tui-aarch64-apple-darwin.tar.gz"
  sha256 "a194db07126c03cd95a270cd446d66f40e68c63ef88bfa2e2016d9b0796311f3"
  license "MIT"


  def install
    bin.install "webex-tui"
  end

end
