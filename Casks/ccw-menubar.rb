cask "ccw-menubar" do
  version "0.1.38"
  sha256 "0d3721e8e0b10649e23e3d84e6b3190200b02c2fa07da06e7211c299e8ee9e86"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCWMenubar.dmg"
  name "CCW Menubar"
  desc "Menubar app for Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  app "CCWMenubar.app"

  zap trash: [
    "~/.ccw",
  ]
end
