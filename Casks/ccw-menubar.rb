cask "ccw-menubar" do
  version "0.1.40"
  sha256 "1f106e80915a356f279cda80f4ee997ca020db10c57169069fdc7cb08a387762"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCWMenubar.dmg"
  name "CCW Menubar"
  desc "Menubar app for Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  app "CCWMenubar.app"

  zap trash: [
    "~/.ccw",
  ]
end
