cask "ccw-menubar" do
  version "0.1.49"
  sha256 "a45312078837c49c1dab6059612a5584fab47b73fad0b7766e7470c45e3676e5"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCWMenubar.dmg"
  name "CCW Menubar"
  desc "Menubar app for Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  app "CCWMenubar.app"

  zap trash: [
    "~/.ccw",
  ]
end
