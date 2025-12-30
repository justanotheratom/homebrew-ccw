class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.58"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.58/ccw-darwin-arm64"
      sha256 "468c8b702f11bd5279c3f41de4b87cc35141fac720c581da60c9ff0aeddecf25"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.58/ccw-darwin-amd64"
      sha256 "f7eef59e36edf4180781bac26d511313cfa10b65c10c2452b33e2ecaf245748e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.58/ccw-linux-arm64"
      sha256 "e73d56f30718ec44254f3b6693b0ae2edd7885156cbb271c87c4d62ea7579dbe"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.58/ccw-linux-amd64"
      sha256 "5c49ba811eb76ff1ecb34dbaf347c821891708315c4be79c66018d78355d5f74"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
