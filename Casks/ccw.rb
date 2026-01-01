cask "ccw" do
  version "0.1.66"
  sha256 "dd2fa6e4fd560f17330fcbbd5f93614ad9bab4703c49e2f94eb4b15d66749563"

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
