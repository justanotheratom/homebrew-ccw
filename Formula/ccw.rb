class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.34"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.34/ccw-darwin-arm64"
      sha256 "778886c8c0c8ddeaeb8285876a3dd8a70a0a12b7ae967f4770e848baca3d5a50"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.34/ccw-darwin-amd64"
      sha256 "754b89246817f2637ddb9784a1005f31c71d8bd5a97dbee229a4655d3f90136d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.34/ccw-linux-arm64"
      sha256 "8c1e606e0849b9ee555659537ffde12d33098db5299caa1146d34cf25a6dce7b"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.34/ccw-linux-amd64"
      sha256 "3fdc10bc07d797be3c4e3828a9e0645c3ec1814d305e8ab2e6c55e05f69cf64c"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
