class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.48"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.48/ccw-darwin-arm64"
      sha256 "aafc6136c6a534c8fdc5f22897e84dbf4423f2c1012955d10d33cb4e04def1e8"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.48/ccw-darwin-amd64"
      sha256 "023f9a2e457cf3fa18ffc9f48d41fd9a9c4d66902e5b05b7ba0423e8c6a80caf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.48/ccw-linux-arm64"
      sha256 "4b4f4059781baca46e5ba9ddfa960a9a4f23e584d1090fb63c1c9305b4c3dd29"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.48/ccw-linux-amd64"
      sha256 "093419d334a6ffb61086ac2d4e45b70156a59ed5c2010dfd8b01de91c036e197"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
