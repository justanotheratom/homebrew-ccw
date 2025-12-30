cask "ccw-menubar" do
  version "0.1.39"
  sha256 "665151163abfbed9602371fbba43fb31d217ca6feb712cc2eadd1d70093e5bab"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCWMenubar.dmg"
  name "CCW Menubar"
  desc "Menubar app for Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  app "CCWMenubar.app"

  zap trash: [
    "~/.ccw",
  ]
end
