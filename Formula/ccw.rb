class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.26"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.26/ccw-darwin-arm64"
      sha256 "d03b7a2eb82a5ed4942b9605f930d07caa7452cb67659cdad1b38a711455ee58"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.26/ccw-darwin-amd64"
      sha256 "285445495777b0ce0cf7e94a72ff222a96ddb0b2ba209378e438f0c872dc4bae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.26/ccw-linux-arm64"
      sha256 "d4cb7804770dc108b0ef5daebe9bbc3ec3ba94af7cea142c89f0912d37fe53b2"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.26/ccw-linux-amd64"
      sha256 "a10cd8572df701f5db1bdf515fb4f9173fbd99c1f7fb6f50e33691cfa9f4d473"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
