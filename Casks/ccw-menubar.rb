cask "ccw-menubar" do
  version "0.1.61"
  sha256 "64a5a9756650d00232662ff0dff315f0e729e16f4e0fac9128fb0161631c6e1e"

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
