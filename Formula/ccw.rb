class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.47"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.47/ccw-darwin-arm64"
      sha256 "b0bd1f2a81fbdd295200dac8087df1e93a9ec755a9c2ee71cff0de6b7b1af34a"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.47/ccw-darwin-amd64"
      sha256 "2a931503e3981cf64df700495a057246fc630b373eb31deaa99e42a6c556f034"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.47/ccw-linux-arm64"
      sha256 "698c993a93a6220509f51c6ea68d5fc1fea35614f418009164e1df6784b9002d"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.47/ccw-linux-amd64"
      sha256 "2bfca09b8f85dc0a5ba74cf9e352dc2f302bd69a35ae19b227189eb3870485b2"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
