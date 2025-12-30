class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.57"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.57/ccw-darwin-arm64"
      sha256 "5e711693f5ef12100856ace7788d8e654ff8de3d779795ebb9792f8c453b6a24"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.57/ccw-darwin-amd64"
      sha256 "154b839be52b698c05ecc69987889ea724c4a210deaa31e67685c5f0f1462256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.57/ccw-linux-arm64"
      sha256 "692d38bf3bbb99d109d4ce1624a38ae3209a91e285e36e971fcabc3cbefa751b"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.57/ccw-linux-amd64"
      sha256 "ddca5ea6de2c68207696a27b20d3a2cf324b8ead7ff0d0b13b8aef6b12f315a2"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
