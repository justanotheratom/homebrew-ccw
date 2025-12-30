class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.32"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.32/ccw-darwin-arm64"
      sha256 "6287aa4bd10c528a32aa38483839a08a25ba7e52985845b29ab8bc2fa70aff83"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.32/ccw-darwin-amd64"
      sha256 "8a4e57bb14fcb2166c2c84b91b427032f8a67c97ff75e60041a61b87de170aaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.32/ccw-linux-arm64"
      sha256 "fd840c029ea021b6c60178a01d2ba300d853f9eabbe4b1d68bdb25ab8df94f55"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.32/ccw-linux-amd64"
      sha256 "6a7f19057b6514950b2c7a140685e2d2af70498317d0d5b413ec3bcf7620a484"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
