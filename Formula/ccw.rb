class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.29"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.29/ccw-darwin-arm64"
      sha256 "a70e0157d5c3c77169ebbf62ae8d5a6cf26c4b820718f1befbd18de11f75fba6"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.29/ccw-darwin-amd64"
      sha256 "5904332f5481d2ebaae842ce0d9fed0ac01260d177857a9aec5f188efd99f9c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.29/ccw-linux-arm64"
      sha256 "b1e9ca0098e2e33ddc2bb18e87a32981ff5d269254da3f2e5a9bc262cd220797"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.29/ccw-linux-amd64"
      sha256 "7f95035dfdec957ca1724d9b898ff09f5e07448bc9eedcfeec3f5e53c82e628d"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
