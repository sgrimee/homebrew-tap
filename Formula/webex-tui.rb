class WebexTui < Formula
  desc "Unofficial minimal Webex chat client for the terminal"
  homepage "https://github.com/sgrimee/webex-tui"
  url "https://github.com/sgrimee/webex-tui/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "1dba39472fa0c9b5501daab83c5ea269cbe9dd93885c145165953151538c8444"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/webex-tui"
  end
end
