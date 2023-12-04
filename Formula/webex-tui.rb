class WebexTui < Formula
  desc "Unofficial minimal Webex chat client for the terminal"
  homepage "https://github.com/sgrimee/webex-tui"
  url "https://github.com/sgrimee/webex-tui/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "970af8c8b2009ee74ed79f673e2ac44d16c881dfd4a5df35014cf5ef43e4d5c5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/webex-tui"
  end
end
