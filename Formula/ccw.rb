class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.25"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.25/ccw-darwin-arm64"
      sha256 "f0419798c45342fcd951cdeb92c857ca0d9cee152ebb155d0705ba29add4728b"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.25/ccw-darwin-amd64"
      sha256 "acd2403d8bd6da0a80269970a03edba66aec38b925480fb30a547eafc2144dc6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.25/ccw-linux-arm64"
      sha256 "4e7f5d1b5b0ac8caffc8536eb81f25d0874dcbde8428ee4ff8702ca3653b38bc"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.25/ccw-linux-amd64"
      sha256 "98ad0341c3a46f7d25bf0ae640492482ec4ff3f8808e601fa9c841c26df1d50c"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
