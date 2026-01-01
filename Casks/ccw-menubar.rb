cask "ccw-menubar" do
  version "0.1.62"
  sha256 "1e1842f92761a5801d571f34000afdad2fb61b1291948ddb3e93cdaae36a82bc"

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
