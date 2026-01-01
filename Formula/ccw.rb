class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.62"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.62/ccw-darwin-arm64"
      sha256 "5e45f144dd7c2f15f347456098626df3e1d413b05eeff4e2daa511b8befe9287"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.62/ccw-darwin-amd64"
      sha256 "fdab0c2181ea28e607ccc119916b5678bb226d2cba738f690b9074c189d4ecf0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.62/ccw-linux-arm64"
      sha256 "88210fa2a27e625719da0a586d1d056041df79c14280599f0a7e4d6d22eaef0a"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.62/ccw-linux-amd64"
      sha256 "1be56593e09b920f2526b1138463a8fc4778c4fa975fb6db74f9649c6acc7a12"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
