class WebexTui < Formula
  desc "Unofficial minimal Webex chat client for the terminal"
  homepage "https://github.com/sgrimee/webex-tui"
  url "https://github.com/sgrimee/webex-tui/archive/refs/tags/v0.7.2.tar.gz"
  sha256 "b886f27325bfb2bf90d02986d3d4799e9816d4d8fdefcf6f12d19d598b8cbf8e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/webex-tui"
  end
end
