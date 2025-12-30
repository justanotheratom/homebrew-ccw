class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.50"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.50/ccw-darwin-arm64"
      sha256 "7c31d78b5c61f0c2801bada81c2760f20eab1c9b18184def2082cba8e0746432"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.50/ccw-darwin-amd64"
      sha256 "41a7d23d8b0239c03142bce4d469d6a53974a1793f8de0301c62eaeda39e1e51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.50/ccw-linux-arm64"
      sha256 "12d0ea5052242da3f412cd6759a8d767d0043c1b74d6627bd7a190eb94a210ec"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.50/ccw-linux-amd64"
      sha256 "5cc8eaa93e4aeec49a2341065cdbc1a1be59640dab760f977e93d9d7845eebeb"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
