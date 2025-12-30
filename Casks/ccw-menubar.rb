cask "ccw-menubar" do
  version "0.1.54"
  sha256 "f08b473e20a399e226a2ccb3e3d9c3abf725066d55c3ec08d59acb61b03cc257"

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
