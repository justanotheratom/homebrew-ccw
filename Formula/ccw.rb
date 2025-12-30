class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.27"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.27/ccw-darwin-arm64"
      sha256 "84ec928539acde590e6103045daf0200f534e84773c5bd58d10d5876fe883538"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.27/ccw-darwin-amd64"
      sha256 "bf3763133cc3645341e967c5d8274d67df1c0eb17133b09f5d9374b2fae66dba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.27/ccw-linux-arm64"
      sha256 "1045fa0ac8cdfbfaf6f998499adf31d6608c57f4cce0a24266875b4eefb97af3"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.27/ccw-linux-amd64"
      sha256 "24bd09fac497ade09361e0e95a619da3fe6abe5902c38e069bb36ecfd8720fd7"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
