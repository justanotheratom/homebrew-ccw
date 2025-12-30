class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.40"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.40/ccw-darwin-arm64"
      sha256 "8cfe22a5856faf33a9f44f45682ed4d2d9919207d02767ba758b8aba91e855ce"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.40/ccw-darwin-amd64"
      sha256 "7cd532cb48978bdbc557243c28ee448739b5f00ea23f1e0d100f38b096e04b23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.40/ccw-linux-arm64"
      sha256 "edcf2881be46f4b778d30baccc0bfbb4d1f5709141ff9a8ef363a382317b70a4"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.40/ccw-linux-amd64"
      sha256 "021df8939ffab76eec806a9233dd58b3699ec9a8661612b21f44a4569ff3e72e"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
