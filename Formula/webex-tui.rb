class WebexTui < Formula
  desc "Unofficial Webex chat client for the terminal"
  homepage "https://github.com/sgrimee/webex-tui"
  url "https://github.com/sgrimee/webex-tui/archive/refs/tags/v0.4.5.tar.gz"
  sha256 "fa25c0822e8d3c7e44160a034ddd634c2c2dc7d0fcefb34cfcd546233f75a2b9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/webex-tui"
  end
end
