class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.41"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.41/ccw-darwin-arm64"
      sha256 "49249cfc3ea7bd1f34cbd39189849db5a7302f8ecb66266ad07e8282a27ef86a"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.41/ccw-darwin-amd64"
      sha256 "e5c6c9c51bb37569f9ce21c5c2b9530617dd355a40479d01166c73f8ea7ccfc1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.41/ccw-linux-arm64"
      sha256 "2e3339b4391b4b1c33f26334322a06971bc08380ccc472d8aea19f51f7bf80fb"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.41/ccw-linux-amd64"
      sha256 "d75ccbb3662628e4e92a2232801f1e7846b09e28dc2cc8020b0e9b52576f1a1f"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
