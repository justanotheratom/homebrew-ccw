class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.46"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.46/ccw-darwin-arm64"
      sha256 "a5870c4b36eb196fe4d0c6df0ce5fc2458df16446a0bea356899224f859cf91f"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.46/ccw-darwin-amd64"
      sha256 "1cc6af229f28562bd23bc781eb51b56d83558e050d4cc32fb603678aa9621aff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.46/ccw-linux-arm64"
      sha256 "face6fa6d4f19bac4fc6415e934f46365a100adacbe6ab7d67c5049793ee30c0"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.46/ccw-linux-amd64"
      sha256 "bb98505344fa96b24187095a630534eafb7d454d1239d836ef6fc96d9047e1be"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
