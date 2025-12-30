class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.53"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.53/ccw-darwin-arm64"
      sha256 "bf7d44fd9d57447610c97bac19a9b4a23286b4db724889826b6a0a6bee8b7030"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.53/ccw-darwin-amd64"
      sha256 "f7b4c351fb160957ac9345fb0c7a9417398e0991dd32f4106cdf32df19775a3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.53/ccw-linux-arm64"
      sha256 "013ec8bf8b9c1770568b748d8327a61be4ebdad10061e82c7f8a8191563bb59c"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.53/ccw-linux-amd64"
      sha256 "d638da7e446eef392e2965e5850d73b9c5703554f21e3df6c38bfd107ad04079"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
