class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.60"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.60/ccw-darwin-arm64"
      sha256 "fef55a73a0d348be55e5f84d34926fe7fa61d2d5bc433a8cc85fb7586c830897"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.60/ccw-darwin-amd64"
      sha256 "1b935639866bfc75893e05c5053b16fff4393d6edc8b1c42cd7872cd4fa02730"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.60/ccw-linux-arm64"
      sha256 "791d269b4120ba48123c67de7b1c7be4cdee4ae203d26600aba218f2ca634568"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.60/ccw-linux-amd64"
      sha256 "4c4311457a9eb9f110fa720ade4911afe6ae758d76a9bc1ae1a14cffbbf3ae25"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
