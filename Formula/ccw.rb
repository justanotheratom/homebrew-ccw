class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.33"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.33/ccw-darwin-arm64"
      sha256 "8de6d7a3bf9ff6c95b7ac3423140843c98fd7d77eb574b996322b4f408339a10"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.33/ccw-darwin-amd64"
      sha256 "b8bc1efdfece88624ff72859266dac88517ee8e576acfc270f4060c0fb43357e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.33/ccw-linux-arm64"
      sha256 "d2cc1af0e455b07c7bed560bde65cecb17084e580af2740aa089af0b286e9e5a"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.33/ccw-linux-amd64"
      sha256 "e7edbf73910870249b6545fa6e3ca6ac3d7197e8164c9dcac8d4b08c89302c85"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
