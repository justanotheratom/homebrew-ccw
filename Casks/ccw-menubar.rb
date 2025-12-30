cask "ccw-menubar" do
  version "0.1.41"
  sha256 "82035f62ae78f810c6170510da5b6d1a403f18953e9ccb247dea631b8e1c0b2f"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCWMenubar.dmg"
  name "CCW Menubar"
  desc "Menubar app for Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  app "CCWMenubar.app"

  zap trash: [
    "~/.ccw",
  ]
end
