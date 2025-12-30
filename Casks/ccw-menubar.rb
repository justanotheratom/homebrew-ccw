cask "ccw-menubar" do
  version "0.1.36"
  sha256 "068dd1210f2454e2617401ae09f1d758915f39ed051058053a4f65682c57a844"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCWMenubar.dmg"
  name "CCW Menubar"
  desc "Menubar app for Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  app "CCWMenubar.app"

  zap trash: [
    "~/.ccw",
  ]
end
