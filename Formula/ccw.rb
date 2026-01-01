class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.63"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.63/ccw-darwin-arm64"
      sha256 "e6d52d80c17dbed8de254760d152b770caa46cc5b5b0eff881b4e57980ec126f"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.63/ccw-darwin-amd64"
      sha256 "6abe289e01274c360e041cc38a775ec60b6f33124b7ed326657307121cc50b85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.63/ccw-linux-arm64"
      sha256 "1a8213542032024dae0fdeb41defa425822e193dd4540e58fe6de07bbccd47d3"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.63/ccw-linux-amd64"
      sha256 "91405c8eca9703a0ea7f3b825d309784870cb66e696bf42198824307f5f9488b"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
