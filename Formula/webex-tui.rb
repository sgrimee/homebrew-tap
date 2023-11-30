class WebexTui < Formula
  desc "Unofficial minimal Webex chat client for the terminal"
  homepage "https://github.com/sgrimee/webex-tui"
  url "https://github.com/sgrimee/webex-tui/archive/refs/tags/v0.4.6.tar.gz"
  sha256 "09b54e57340ec34cd383aa2e38c1ebe1cc6f97c3fb3039692792fee726d88a00"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/webex-tui"
  end
end
