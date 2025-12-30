cask "ccw-menubar" do
  version "0.1.50"
  sha256 "2bae2d5301b90308b8302fee3660f89a49d39ffea3a667e405880cfbfe1b7c2a"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCWMenubar.dmg"
  name "CCW Menubar"
  desc "Menubar app for Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  app "CCWMenubar.app"

  zap trash: [
    "~/.ccw",
  ]
end
