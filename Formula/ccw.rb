class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.39"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.39/ccw-darwin-arm64"
      sha256 "be33d2337a97fce423396cd98faef8d3fdebaac434c96e54ed3d72b27c78d31b"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.39/ccw-darwin-amd64"
      sha256 "2194560708c41eb479b71f333e778fc6929185052e6b84b874de5a7d29549987"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.39/ccw-linux-arm64"
      sha256 "855c127c39067701fc55e8a44c0e870fb15f884c9ed756bb3ea5998b2f73b377"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.39/ccw-linux-amd64"
      sha256 "103c60eb74e33546fbd272065c0bd08bbb7b42c85bac3f87b31dea19452252c9"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
