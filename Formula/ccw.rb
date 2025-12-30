class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.49"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.49/ccw-darwin-arm64"
      sha256 "888d8101e08454d4ced7e6cfe6e967093417e625b67a770caaaea2aa4698d4fc"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.49/ccw-darwin-amd64"
      sha256 "27c1566808299aeb38bb8fe06ec6e542586db8d47d65c2f70c82809c74fe3993"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.49/ccw-linux-arm64"
      sha256 "ce44d64e5e15e44d7e31c41b445af2ae6237be376a84137719b8cd2da358f0bf"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.49/ccw-linux-amd64"
      sha256 "be59ffebcde4281419ebca6f6a22f48ad48e262a31e7da2db34cbd3d8a68043e"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
