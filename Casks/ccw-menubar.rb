cask "ccw-menubar" do
  version "0.1.51"
  sha256 "753eaccc543cb9eac235890670c7676de676b058102efded9bcd28d16a6d03a8"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCWMenubar.dmg"
  name "CCW Menubar"
  desc "Menubar app for Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  app "CCWMenubar.app"

  zap trash: [
    "~/.ccw",
  ]
end
