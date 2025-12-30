class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.36"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.36/ccw-darwin-arm64"
      sha256 "dc7741dd33c8e6c13c926193e7a294644e1edf2ba54e2b44e098d5b273520ea2"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.36/ccw-darwin-amd64"
      sha256 "f96a5faf513603c13b4c80e9d31c141429cd0ab28e1aa7f7c2fc63825f874069"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.36/ccw-linux-arm64"
      sha256 "b2de748232b480fa79a987ed6aaf99c6b72b6e65953dc5b6bf1b5172e9d08f90"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.36/ccw-linux-amd64"
      sha256 "ed166af69da337064ca2e16942f7e004e49e2f0b9d5617dfe1b96db45d031041"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
