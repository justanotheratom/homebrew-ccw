class Ccw < Formula
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"
  version "0.1.56"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.56/ccw-darwin-arm64"
      sha256 "0e1119c037f7f2def0e7d72b105918a0b5d132c993d4af13bcc408a5d8d81dea"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.56/ccw-darwin-amd64"
      sha256 "f93aec40dfe65179d79dff038a58cf4d49359c792e899a6eb4998d5f0e4301ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.56/ccw-linux-arm64"
      sha256 "8df40942115833962c23dc62eca73da6f19df92b889c791adba1e79eb1c4a326"
    else
      url "https://github.com/justanotheratom/ccw/releases/download/v0.1.56/ccw-linux-amd64"
      sha256 "53364c8bc472768475a9079b6d896c83cdc6a838dbcbd01c1572511297b433a8"
    end
  end

  license "MIT"
  head "https://github.com/justanotheratom/ccw.git", branch: "main"

  def install
    bin.install Dir["ccw*"].first => "ccw"
  end
end
