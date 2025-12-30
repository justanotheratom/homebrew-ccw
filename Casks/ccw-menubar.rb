cask "ccw-menubar" do
  version "0.1.52"
  sha256 "8b3ccb7fbd4275409aa8be66bb15825d73657c0f3b2a0ce84a13064a175978e1"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCWMenubar.dmg"
  name "CCW Menubar"
  desc "Menubar app for Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  app "CCWMenubar.app"

  zap trash: [
    "~/.ccw",
  ]
end
