class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.52"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.52/ccw-darwin-arm64"
      sha256 "c4ec506ab74cc6c1b72dc3ff19c8fa925e0a03602c46235fbcda2eb08b234f9d"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.52/ccw-darwin-amd64"
      sha256 "8be53243b4604205054daf04e825b3d8785d0c4b9e006c1a902f9a62496b2e79"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.52/ccw-linux-arm64"
      sha256 "f498a306522ff5672bfb1c9aec2005c7445ac111bda00822b94ff262318cb7ba"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.52/ccw-linux-amd64"
      sha256 "486245ba9b105fbfa8be5cffe62108cdd0b7ccdffb99e85ef9b420849d6b2b48"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
