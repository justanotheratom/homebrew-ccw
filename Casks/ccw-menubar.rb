cask "ccw-menubar" do
  version "0.1.60"
  sha256 "43326eff42a002951fcc165aa4640ded3f98e5c11f764c70afc6c1d37131bfac"

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
