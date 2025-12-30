class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.35"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.35/ccw-darwin-arm64"
      sha256 "13110f252f89844c83ced94f15c130753aec9f6c588a8f90cb0b6642e5d85724"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.35/ccw-darwin-amd64"
      sha256 "ea41f69e1bc62650b93518dd274525e6bd1bfdaaf310165ad9da409e5d6db961"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.35/ccw-linux-arm64"
      sha256 "3053b18fbb2b455437cafbe165efc06e4ebe5b20451768813a7c8d47f046050c"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.35/ccw-linux-amd64"
      sha256 "5613440c1d26ee2a5aa4986d506b91b48c7199c77b35e2f4855507c85b34e929"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
