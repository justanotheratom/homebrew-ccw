class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.38"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.38/ccw-darwin-arm64"
      sha256 "b250f51532ded12721235d02e692dd5a263b583744c11bea2a6fc6d200bb6fb3"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.38/ccw-darwin-amd64"
      sha256 "2fcd3a362c7a3f772b742c091ba41ee2911893e06e67c389de702c8efc2994ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.38/ccw-linux-arm64"
      sha256 "73e23d3703c2c7ca0a76cfaa82fa69c9bd0b942321095de5a2a1f9c2f9d850ac"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.38/ccw-linux-amd64"
      sha256 "1eec2a42ea0daf40a321f09af90e6fb45b45f7536267c148945b79eb18081a12"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
