class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.59"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.59/ccw-darwin-arm64"
      sha256 "44861564831b2b0efdf68297a07263f6d3cb29d0c43883e17b4f96fcaf1b5f4a"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.59/ccw-darwin-amd64"
      sha256 "56e90859f7d7b474cd92613fa2ace5070b50fa2fcb93b7316d2a0db9eba38eae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.59/ccw-linux-arm64"
      sha256 "901bb15ef1508f577489f235cd3925b76b22a856ed177d41fefce752fa0b5432"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.59/ccw-linux-amd64"
      sha256 "407c90b81e16cd7d5ac1c6131744926742efea7bba29da1503d1de7adac4c702"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
