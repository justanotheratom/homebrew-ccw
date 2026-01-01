cask "ccw" do
  version "0.1.71"
  sha256 "96bc33081d469860a2afa057842aa0385432ef363250af06b58fc41df7efb347"

  url "https://github.com/justanotheratom/ccw/releases/download/v#{version}/CCW.dmg"
  name "CCW"
  desc "Claude Code Workspace manager"
  homepage "https://github.com/justanotheratom/ccw"

  depends_on macos: ">= :sonoma"

  app "CCW.app"
  binary "#{appdir}/CCW.app/Contents/Resources/ccw", target: "ccw"

  zap trash: [
    "~/.ccw",
  ]
end
