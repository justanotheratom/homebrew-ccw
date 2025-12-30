class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.55"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.55/ccw-darwin-arm64"
      sha256 "8e3cc5ea59e2355c85a151d57fa3b083e0c4e9bf59508c2257207dcb94eb0af1"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.55/ccw-darwin-amd64"
      sha256 "775a5518a5a2bbda2793bff85206e232e573cc5b8a85a43740afb147f5c7385e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.55/ccw-linux-arm64"
      sha256 "cc18618c8445b0265931f1ec3e4d0e9f8f00d5bdad3db3266d9f658956a2bf54"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.55/ccw-linux-amd64"
      sha256 "f05252b96b1d9378132a855f38ef228669208bb4feac33d1a9aa11021f9500a6"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
