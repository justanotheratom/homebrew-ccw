class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.31/ccw-darwin-arm64"
      sha256 "d87ce2cb13e8a507ed574a2d11fb4fe7e95e134c0ddd3415444079dc9823d4b1"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.31/ccw-darwin-amd64"
      sha256 "f27308eafd2611a83d3293babe0791691ca5a4095f01b3a02c5d1ea6dea19250"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.31/ccw-linux-arm64"
      sha256 "0abfd168e414589a786a6c475c00271ae9a4a7e71371944529265b64a08596b3"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.31/ccw-linux-amd64"
      sha256 "5bacd58b8c84ccf4090eb48a3634a3313ba51c8af5f1fea9105bfa799b902cb3"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
