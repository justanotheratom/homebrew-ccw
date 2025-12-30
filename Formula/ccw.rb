class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.37"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.37/ccw-darwin-arm64"
      sha256 "f34dc87514b28d4fe7a090639f0c3693e0a95d7d9d09c3bc8e5b0a38945f6d50"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.37/ccw-darwin-amd64"
      sha256 "29a516f563f6f6ee94823872040f478a282674ea7c988727f78e92ea10b6a700"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.37/ccw-linux-arm64"
      sha256 "588ac78017e5bfee278fb3eb99af261c3a7f2d8cf9c469d97b86a8bc3517e6db"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.37/ccw-linux-amd64"
      sha256 "c38b727b87d919dec363fb5b07dffd223a5b1ce575e73d3295478750876d56bf"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
