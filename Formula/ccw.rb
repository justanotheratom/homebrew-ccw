class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.60"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.60/ccw-darwin-arm64"
      sha256 "7368f4af7ebd75c55f07415ffaa7e79a9bee11eafdd5df909d6a1a913a786c49"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.60/ccw-darwin-amd64"
      sha256 "c7ccb9c54c1a33f863e66294269126fdbb913088ef23d67aa22bffeac2e8c899"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.60/ccw-linux-arm64"
      sha256 "7e77d2ea7dbb026fccdb3b5bc77dc7d5ade08c7ead9af66c8d87e24e057e9cb8"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.60/ccw-linux-amd64"
      sha256 "5f32a4667939af2a9560cc2267898630e390d25fd2a0813b2d74ed569db17501"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
