cask "ccw-menubar" do
  version "0.1.43"
  sha256 "becc3a6bb2c0e07c3db69b1ce7f7dbdf56049b7cd888bac944a1c9614c8e85b4"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCWMenubar.dmg"
  name "CCW Menubar"
  desc "Menubar app for Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  app "CCWMenubar.app"

  zap trash: [
    "~/.ccw",
  ]
end
