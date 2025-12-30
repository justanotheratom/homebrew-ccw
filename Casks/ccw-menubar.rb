cask "ccw-menubar" do
  version "0.1.53"
  sha256 "2b98848f0ae3ed6c1286c7343a6b362a1dbaf45d3ffc86bf72647a63a3b08e04"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCWMenubar.dmg"
  name "CCW Menubar"
  desc "Menubar app for Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  app "CCWMenubar.app"
  binary "#{appdir}/CCWMenubar.app/Contents/MacOS/ccw", target: "ccw"

  zap trash: [
    "~/.ccw",
  ]
end
