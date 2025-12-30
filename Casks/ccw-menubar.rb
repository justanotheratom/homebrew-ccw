cask "ccw-menubar" do
  version "0.1.48"
  sha256 "5e61aa76b30249032bfd7cbcf26cca32fbe0636a0c0d75592281d5ac08ddedcc"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCWMenubar.dmg"
  name "CCW Menubar"
  desc "Menubar app for Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  app "CCWMenubar.app"

  zap trash: [
    "~/.ccw",
  ]
end
