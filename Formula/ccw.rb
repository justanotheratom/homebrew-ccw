class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.42"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.42/ccw-darwin-arm64"
      sha256 "75aacdc41255d4d1ef6228fe7fdbfe90e4b794a23afef65e2dca52dfea2b732a"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.42/ccw-darwin-amd64"
      sha256 "1b994e3bbdcec32c756f28e453da3d9fbcdcb9f5f755703fbd4b8a39789ce641"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.42/ccw-linux-arm64"
      sha256 "6ce69cc53b2a241f3db7a371e59b67ba825ddc08ebeed0709d7c23dcbdca4497"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.42/ccw-linux-amd64"
      sha256 "a0e8a9b6e262c5aa9e992278627318e33ad1d66c77a39433acab81ce500dfb3a"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
