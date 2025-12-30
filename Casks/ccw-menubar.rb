cask "ccw-menubar" do
  version "0.1.46"
  sha256 "44743139960c396f09ccf9fb16c805e904dc03bb840139b80d2184e9c268257f"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCWMenubar.dmg"
  name "CCW Menubar"
  desc "Menubar app for Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  app "CCWMenubar.app"

  zap trash: [
    "~/.ccw",
  ]
end
