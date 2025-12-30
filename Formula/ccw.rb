class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.44"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.44/ccw-darwin-arm64"
      sha256 "c7ad64b2bb66f04723d96991080c903e8a9098ebc28554a34a2db6d773199627"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.44/ccw-darwin-amd64"
      sha256 "8ff3a375723cf682e1f2f88ee06b108aaf141741fc092877e023744b441a9177"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.44/ccw-linux-arm64"
      sha256 "ff35a35461fd1251d652f16676d5a0e17ddbb2117befa30b285b83f962863f92"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.44/ccw-linux-amd64"
      sha256 "cdaaf59050338ef685ad27bde287c9ac9d64916b587da3251462f36ba8e756be"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
