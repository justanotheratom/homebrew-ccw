class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.28"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.28/ccw-darwin-arm64"
      sha256 "9623752b983b9599e69bcd373f476595949aa299e3fa9fdcfad6ad46a2c5569e"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.28/ccw-darwin-amd64"
      sha256 "e46339aad363b2588c7cd90d6ebb0de1700d86d39b7f546c339ec951435c8d4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.28/ccw-linux-arm64"
      sha256 "cf9719ac2bef1fe3c4512bf4e3687f7b500a9f3d0143cf5c550bc6d04b3f4ac7"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.28/ccw-linux-amd64"
      sha256 "6befedb8ec3285f7de8838fc3edc7b497321279d06d046456b078b44ae65b868"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
