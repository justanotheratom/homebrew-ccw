class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.30"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.30/ccw-darwin-arm64"
      sha256 "f23bcac401982f339713e9d25505a08eb6363ec0224da86d71341e7f87e5a1be"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.30/ccw-darwin-amd64"
      sha256 "b4074e52bc508ee0efae70e1b4f147eeb91a8c77e74c0ee818df47c940b37343"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.30/ccw-linux-arm64"
      sha256 "6f7ff948162205a0806d63cba3e55f5898b13b5956b0b7295f11b2740f1994c9"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.30/ccw-linux-amd64"
      sha256 "7f38f341917f2004118d567b4230305fae71c8fd09793181fff3162fd7f92b29"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
