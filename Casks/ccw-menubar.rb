cask "ccw-menubar" do
  version "0.1.37"
  sha256 "311ade64e9707f0f21ca8806fb49544911b8fbc130c02f4853ccb42f68152b40"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCWMenubar.dmg"
  name "CCW Menubar"
  desc "Menubar app for Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  app "CCWMenubar.app"

  zap trash: [
    "~/.ccw",
  ]
end
