class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.45"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.45/ccw-darwin-arm64"
      sha256 "e6b0a8c571da6b7fb225032610b4a05fdc69cd3eb5b274b0dd7923e1d89e8c7c"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.45/ccw-darwin-amd64"
      sha256 "0b003beab6f31a96ca163f7d94d0f47f6b6721b490815212b9275315cf4facfd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.45/ccw-linux-arm64"
      sha256 "72ba455b7d1080defdf53b2daaa3034014bc66655e070984605c6df2ccb866f1"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.45/ccw-linux-amd64"
      sha256 "52b9e3d96f583dc6dc3ade0f0c238a67653114a78ea593748148c613bbad522c"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
