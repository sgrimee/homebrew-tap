class WebexTui < Formula
  desc "Unofficial Webex chat client for the terminal"
  homepage "https://github.com/sgrimee/webex-tui"
  url "https://github.com/sgrimee/webex-tui/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "1cc91bd83f9e04ba2cd8c5d8abb7431ece81c61a69a9c1511cf2f6e0cfddbc0a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "webex-tui"
  end
end
