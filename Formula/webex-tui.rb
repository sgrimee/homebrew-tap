class WebexTui < Formula
  desc "Unofficial minimal Webex chat client for the terminal"
  homepage "https://github.com/sgrimee/webex-tui"
  url "https://github.com/sgrimee/webex-tui/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "abe3dbeb3d222a8b1e96bc25cc21fa830dedd0ea88418d6a056cdd896e378d26"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/webex-tui"
  end
end
