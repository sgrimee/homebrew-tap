class WebexTui < Formula
  desc "Unofficial Webex chat client for the terminal"
  homepage "https://github.com/sgrimee/webex-tui"
  url "https://github.com/sgrimee/webex-tui/archive/refs/tags/v0.1.0.tar.gz"
  sha256 ""
  license "MIT"

  depends_on "rust" => :build
  
  def install
    system "cargo", "build", "--release", "--bin", "webex-tui"  
    bin.install "webex-tui"
  end
end
