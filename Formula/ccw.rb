class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.54"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.54/ccw-darwin-arm64"
      sha256 "ff07b205278343fb2fe6d02aa988c4b6585564b0cfc332dd945115a3e3de1f64"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.54/ccw-darwin-amd64"
      sha256 "f60fbd0fcbc68fb506117e748878c2fe89894e314dac2f89f3f68ebd1356ce26"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.54/ccw-linux-arm64"
      sha256 "1ed8ddf44f42bce7c359f45f8558e29210278ace1c008b05e740d8d736c70156"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.54/ccw-linux-amd64"
      sha256 "42d8478963b9c67be6114a1ea63e30fc581359af6fa15e8a13a7b473632b50e4"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
