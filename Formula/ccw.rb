class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.51"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.51/ccw-darwin-arm64"
      sha256 "9ebef0ffffc340a94389903ade0dbe4c8ebf70523ffec3dde5c69ffb9ed86175"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.51/ccw-darwin-amd64"
      sha256 "566ef5c64c9c374bdd2783a16a30bf93c675569014730ae4ad6c1d66bf4d6002"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.51/ccw-linux-arm64"
      sha256 "758ab6393756697552ef4678da9a5d9d823f05c050985e3e48d1767b1b7d90b6"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.51/ccw-linux-amd64"
      sha256 "05682d8d4eb455df8a9bd3229f5c2012eab1102ece35208fae145e94f7da9fce"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
