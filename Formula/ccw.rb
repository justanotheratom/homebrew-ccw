class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.61"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.61/ccw-darwin-arm64"
      sha256 "badea81c1eca8cd83e62ed31f5803c3fc5b0e08e5ab54e5e28a73e710806db97"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.61/ccw-darwin-amd64"
      sha256 "c62e51c3a2e2da16ff58f5f638d0e5baa49066f29dda78236bbe7bd80542315f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.61/ccw-linux-arm64"
      sha256 "7ac3e13d86916d5df9e3ef17eaf0bd86d0e5bcfe2b42e9a3636d2a7651ab72b7"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.61/ccw-linux-amd64"
      sha256 "8012216aa40b39b107eebe2d998738e490ceb5830aafab22baaf1aba50633a72"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
