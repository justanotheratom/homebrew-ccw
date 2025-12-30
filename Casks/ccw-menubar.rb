cask "ccw-menubar" do
  version "0.1.42"
  sha256 "9479294fb686512375bae71878f355a76e476f5d738342bf05d8850955eb4f81"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCWMenubar.dmg"
  name "CCW Menubar"
  desc "Menubar app for Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  app "CCWMenubar.app"

  zap trash: [
    "~/.ccw",
  ]
end
